#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#pragma warning(disable : 4996)

#define ROW_SIZE 1315
#define COL_SIZE 1240

uint8_t cfa[ROW_SIZE][COL_SIZE];
uint32_t fullColor[ROW_SIZE][COL_SIZE];

char line[COL_SIZE * 3 + COL_SIZE + 2];

void demosaicing(uint8_t bw[ROW_SIZE][COL_SIZE], uint32_t color[ROW_SIZE][COL_SIZE], int rowSize, int colSize)
{
	for (int r = 0; r < rowSize; r++)
	{
		for (int c = 0; c < colSize; c++)
		{
			//rggb
			bool isBlueRow = (r % 2 != 0);
			bool isGreenPixel;
			if (isBlueRow)
			{
				isGreenPixel = (c % 2 == 0);
			}
			else
			{
				isGreenPixel = (c % 2 != 0);
			}

			//calculate color
			color[r][c] = 0;

			//four combination for neighboring 3x3 pixels
			if (isBlueRow && isGreenPixel)
			{
				//red
				color[r][c] |= ((bw[r + 1][c] + bw[r - 1][c]) / 2) << 16;

				//green
				color[r][c] |= ((bw[r][c] +
					bw[r - 1][c - 1] +
					bw[r + 1][c + 1] +
					bw[r + 1][c - 1] +
					bw[r - 1][c + 1]) / 5) << 8;

				//blue
				color[r][c] |= ((bw[r][c - 1] + bw[r][c + 1]) / 2);
			}
			else if (isBlueRow && !isGreenPixel)
			{
				//red
				color[r][c] |= ((bw[r - 1][c - 1] +
					bw[r + 1][c + 1] +
					bw[r + 1][c - 1] +
					bw[r - 1][c + 1]) / 4) << 16;

				//green
				color[r][c] |= ((bw[r][c - 1] +
					bw[r][c + 1] +
					bw[r - 1][c] +
					bw[r + 1][c]) / 4) << 8;

				//blue
				color[r][c] |= bw[r][c];
			}
			else if (!isBlueRow && isGreenPixel)
			{
				//red
				color[r][c] |= ((bw[r][c + 1] + bw[r][c - 1]) / 2) << 16;

				//green
				color[r][c] |= ((bw[r][c] +
					bw[r - 1][c - 1] +
					bw[r + 1][c + 1] +
					bw[r + 1][c - 1] +
					bw[r - 1][c + 1]) / 5) << 8;

				//blue
				color[r][c] |= ((bw[r - 1][c] + bw[r + 1][c]) / 2);
			}
			else if (!isBlueRow && !isGreenPixel)
			{
				//red
				color[r][c] |= bw[r][c] << 16;

				//green
				color[r][c] |= ((bw[r][c - 1] +
					bw[r][c + 1] +
					bw[r - 1][c] +
					bw[r + 1][c]) / 4) << 8;

				//blue
				color[r][c] |= ((bw[r - 1][c - 1] +
					bw[r + 1][c + 1] +
					bw[r + 1][c - 1] +
					bw[r - 1][c + 1]) / 4);
			}
		}
	}
}

void rgbToYCbCr444(uint32_t data[ROW_SIZE][COL_SIZE], int rowSize, int colSize)
{
	for (int r = 0; r < rowSize; r++)
	{
		for (int c = 0; c < colSize; c++)
		{
			uint8_t red = (data[r][c] >> 16) & 0xFF;
			uint8_t green = (data[r][c] >> 8) & 0xFF;
			uint8_t blue = (data[r][c] >> 0) & 0xFF;

			//TODO verify this is the correct conversion
			uint8_t Y = (uint8_t)((0.183 * red) + (0.614 * green) + (0.062 * blue) + 16);
			uint8_t Cb = (uint8_t)((-0.101 * red) + (-0.338 * green) + (0.439 * blue) + 128);
			uint8_t Cr = (uint8_t)((0.439 * red) + (-0.399 * green) + (-0.040 * blue) + 128);

			data[r][c] = (Y << 16) | (Cb << 8) | Cr;
		}
	}
}

void YCbCr444to422(uint32_t data[ROW_SIZE][COL_SIZE], int rowSize, int colSize)
{
	for (int r = 0; r < rowSize; r++)
	{
		for (int c = 0; c < colSize; c++)
		{
			uint8_t Y = (data[r][c] >> 16) & 0xFF;
			uint8_t Cb = (data[r][c] >> 8) & 0xFF;
			uint8_t Cr = (data[r][c] >> 0) & 0xFF;

			//data format: Cr,Y,Cb,Y (8 bits each 32 bits total)
			data[r][c] = (Cr << 24) | (Y << 16) | (Cb << 8) | Y;
		}
	}
}


void main()
{
	FILE* inFile = fopen("rggb.csv", "r");
	FILE* outFile = fopen("rggb_color.csv", "w");

	for (int r = 0; r < ROW_SIZE; r++)
	{
		fgets(line, COL_SIZE * 3 + COL_SIZE + 2, inFile);
		char* tok = strtok(line, ",");

		for (int c = 0; c < COL_SIZE; c++)
		{
			if (tok != NULL)
			{
				cfa[r][c] = (uint8_t)atoi(tok);
				tok = strtok(NULL, ",");
			}
		}
	}

	// For Debug all red pixels
	//for (int r = 0; r < ROW_SIZE; r++)
	//{
	//	for (int c = 0; c < COL_SIZE; c++)
	//	{
	//		fullColor[r][c] = (255 << 16) | (0 << 8) | (0 << 0);
	//	}
	//}

	demosaicing(cfa, fullColor, ROW_SIZE, COL_SIZE);
	rgbToYCbCr444(fullColor, ROW_SIZE, COL_SIZE);
	YCbCr444to422(fullColor, ROW_SIZE, COL_SIZE);

	for (int r = 0; r < ROW_SIZE; r++)
	{
		for (int c = 0; c < COL_SIZE; c++)
		{
			fprintf(outFile, "%d,", fullColor[r][c]);
		}
		fprintf(outFile, "\n");
	}

	fclose(inFile);
	fclose(outFile);
}