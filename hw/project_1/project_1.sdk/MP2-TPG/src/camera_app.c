/*****************************************************************************
 * Joseph Zambreno
 * Phillip Jones
 *
 * Department of Electrical and Computer Engineering
 * Iowa State University
 *****************************************************************************/

/*****************************************************************************
 * camera_app.c - main camera application code. The camera configures the various
 * video in and video out peripherals, and (optionally) performs some
 * image processing on data coming in from the vdma.
 *
 *
 * NOTES:
 * 02/04/14 by JAZ::Design created.
 *****************************************************************************/

#include "camera_app.h"

#define ROW_SIZE 1080
#define COL_SIZE 1920
#define true 1
#define false 0
typedef int bool;

void demosaicing(uint16_t* bw, uint32_t color[ROW_SIZE][COL_SIZE], int rowSize, int colSize)
{
	for (int r = 0; r < ROW_SIZE; r++)
	{
		for (int c = 0; c < COL_SIZE; c++)
		{
			//bggr
			bool isBlueRow = (r % 2 == 0);
			bool isGreenPixel;
			if (isBlueRow)
			{
				isGreenPixel = (c % 2 != 0);
			}
			else
			{
				isGreenPixel = (c % 2 == 0);
			}

			//calculate color
			color[r][c] = 0;

			//four combination for neighboring 3x3 pixels
			if (isBlueRow && isGreenPixel)
			{
				//red
				color[r][c] |= ((bw[(r - 1) * COL_SIZE + c + 1] + bw[(r + 1) * COL_SIZE + c]) / 2) << 16;

				//green
				color[r][c] |= ((bw[r * COL_SIZE + c] +
					bw[(r - 1) * COL_SIZE + c - 1] +
					bw[(r + 1) * COL_SIZE + c + 1] +
					bw[(r + 1) * COL_SIZE + c - 1] +
					bw[(r - 1) * COL_SIZE + c + 1]) / 5) << 8;

				//blue
				color[r][c] |= ((bw[r * COL_SIZE + c - 1] + bw[r * COL_SIZE + c + 1]) / 2);
			}
			else if (isBlueRow && !isGreenPixel)
			{
				//red
				color[r][c] |= ((bw[(r - 1) * COL_SIZE + c - 1] +
					bw[(r + 1) * COL_SIZE + c + 1] +
					bw[(r + 1) * COL_SIZE + c - 1] +
					bw[(r - 1) * COL_SIZE + c + 1]) / 4) << 16;

				//green
				color[r][c] |= ((bw[r * COL_SIZE + c - 1] +
					bw[r * COL_SIZE + c + 1] +
					bw[(r - 1) * COL_SIZE + c] +
					bw[(r + 1) * COL_SIZE + c]) / 4) << 8;

				//blue
				color[r][c] |= bw[r * COL_SIZE + c];
			}
			else if (!isBlueRow && isGreenPixel)
			{
				//red
				color[r][c] |= ((bw[r * COL_SIZE + c + 1] + bw[r * COL_SIZE + c - 1]) / 2) << 16;

				//green
				color[r][c] |= ((bw[r * COL_SIZE + c] +
					bw[(r - 1) * COL_SIZE + c - 1] +
					bw[(r + 1) * COL_SIZE + c + 1] +
					bw[(r + 1) * COL_SIZE + c - 1] +
					bw[(r - 1) * COL_SIZE + c + 1]) / 5) << 8;

				//blue
				color[r][c] |= ((bw[(r - 1) * COL_SIZE + c] + bw[(r + 1) * COL_SIZE + c]) / 2);
			}
			else if (!isBlueRow && !isGreenPixel)
			{
				//red
				color[r][c] |= bw[r * COL_SIZE + c] << 16;

				//green
				color[r][c] |= ((bw[r * COL_SIZE + c - 1] +
					bw[r * COL_SIZE + c + 1] +
					bw[(r - 1) * COL_SIZE + c] +
					bw[(r + 1) * COL_SIZE + c]) / 4) << 8;

				//blue
				color[r][c] |= ((bw[(r - 1) * COL_SIZE + c - 1] +
					bw[(r + 1) * COL_SIZE + c + 1] +
					bw[(r + 1) * COL_SIZE + c - 1] +
					bw[(r - 1) * COL_SIZE + c + 1]) / 4);
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
			uint8_t red = (data[r][c] >> 0) & 0xFF;
			uint8_t green = (data[r][c] >> 8) & 0xFF;
			uint8_t blue = (data[r][c] >> 16) & 0xFF;

			//TODO verify this is the correct conversion
			//HDTV Computer
//			uint8_t Y = (uint8_t)((0.183 * red) + (0.614 * green) + (0.062 * blue) + 16);
//			uint8_t Cb = (uint8_t)((-0.101 * red) + (-0.338 * green) + (0.439 * blue) + 128);
//			uint8_t Cr = (uint8_t)((0.439 * red) + (-0.399 * green) + (-0.040 * blue) + 128);

			//SDTV Computer
			uint8_t Y = (uint8_t)((0.257 * red) + (0.504 * green) + (0.098 * blue) + 16);
			uint8_t Cb = (uint8_t)((-0.148 * red) + (-0.291 * green) + (0.439 * blue) + 128);
			uint8_t Cr = (uint8_t)((0.439 * red) + (-0.368 * green) + (-0.071 * blue) + 128);

			data[r][c] = (Y << 16) | (Cb << 8) | Cr;
		}
	}
}

void YCbCr444to422(uint32_t data[ROW_SIZE][COL_SIZE], uint16_t* out, int rowSize, int colSize)
{
	for (int r = 0; r < rowSize; r++)
	{
		for (int c = 0; c < colSize; c++)
		{
			uint8_t Y = (data[r][c] >> 16) & 0xFF;
			uint8_t Cb = (data[r][c] >> 8) & 0xFF;
			uint8_t Cr = (data[r][c] >> 0) & 0xFF;

			if(c % 2 == 0)
			{
				out[r* COL_SIZE + c] = (Cb << 8) | Y;
			}
			else
			{
				out[r* COL_SIZE + c] = (Cr << 8) | Y;
			}
			//data format: Cr,Y,Cb,Y
		}
	}
}


camera_config_t camera_config;

// Main function. Initializes the devices and configures VDMA
int main() {

	camera_config_init(&camera_config);
	fmc_imageon_enable(&camera_config);
	camera_loop(&camera_config);

	return 0;
}


// Initialize the camera configuration data structure
void camera_config_init(camera_config_t *config) {

    config->uBaseAddr_IIC_FmcIpmi =  XPAR_FMC_IPMI_ID_EEPROM_0_BASEADDR;   // Device for reading HDMI board IPMI EEPROM information
    config->uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_0_BASEADDR;    // Device for configuring the HDMI board

    // Uncomment when using VITA Camera for Video input
    config->uBaseAddr_VITA_SPI = XPAR_ONSEMI_VITA_SPI_0_S00_AXI_BASEADDR;  // Device for configuring the Camera sensor
    config->uBaseAddr_VITA_CAM = XPAR_ONSEMI_VITA_CAM_0_S00_AXI_BASEADDR;  // Device for receiving Camera sensor data

    // Uncomment as Video Hardware pipeline IP cores are added
//    config->uDeviceId_CFA = XPAR_CFA_0_DEVICE_ID;
//    config->uDeviceId_CRES = XPAR_CRESAMPLE_0_DEVICE_ID;
//    config->uDeviceId_RGBYCC = XPAR_RGB2YCRCB_0_DEVICE_ID;

    // Uncomment when using the TPG for Video input
    //config->uBaseAddr_TPG_PatternGenerator = XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR; // TPG Device

    config->uDeviceId_VTC_tpg   = XPAR_V_TC_0_DEVICE_ID;                        // Video Timer Controller (VTC) ID
    config->uDeviceId_VDMA_HdmiFrameBuffer = XPAR_AXI_VDMA_0_DEVICE_ID;         // VDMA ID
    config->uBaseAddr_MEM_HdmiFrameBuffer = XPAR_DDR_MEM_BASEADDR + 0x10000000; // VDMA base address for Frame buffers
    config->uNumFrames_HdmiFrameBuffer = XPAR_AXIVDMA_0_NUM_FSTORES;            // NUmber of VDMA Frame buffers

    return;
}


// Main (SW) processing loop. Recommended to have an explicit exit condition
void camera_loop(camera_config_t *config) {

	Xuint32 parkptr;
	Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
	int i, j;


	xil_printf("Entering main SW processing loop\r\n");


	// Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
	parkptr = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET);
	parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
	parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
	parkptr |= 0x1;
	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET, parkptr);


	// Grab the DMA Control Registers, and clear circular park mode.
	vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
	vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);


	// Pointers to the S2MM memory frame and M2SS memory frame
	volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
	volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);


	xil_printf("Start processing 1000 frames!\r\n");
	xil_printf("pS2MM_Mem = %X\n\r", pS2MM_Mem);
	xil_printf("pMM2S_Mem = %X\n\r", pMM2S_Mem);

	// Run for 1000 frames before going back to HW mode
	for (j = 0; j < 1000; j++) {
		uint32_t color[ROW_SIZE][COL_SIZE];


		demosaicing(pS2MM_Mem, color, ROW_SIZE, COL_SIZE);
//		for(int l = 0; l < ROW_SIZE; l++)
//		{
//			for(int n = 0; n < COL_SIZE; n++)
//			{
//				color[l][n] = (255 << 0);
//			}
////			tt[l] = 0xF0525A52;
//		}

		rgbToYCbCr444(color, ROW_SIZE, COL_SIZE);
		YCbCr444to422(color, pMM2S_Mem, ROW_SIZE, COL_SIZE);

		uint32_t * tt = pMM2S_Mem;



		for (i = 0; i < (1920*1080) >> 2; i++) {
	       //pMM2S_Mem[i] = pS2MM_Mem[1920*1080-i-1];
//			pMM2S_Mem[i] = color[i];
			tt[i] = 0x36912291;
		}

	}


	// Grab the DMA Control Registers, and re-enable circular park mode.
	vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
	vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);


	xil_printf("Main SW processing loop complete!\r\n");

	sleep(5);

	// Uncomment when using TPG for Video input
	//fmc_imageon_disable_tpg(config);

	sleep(1);


	return;
}
