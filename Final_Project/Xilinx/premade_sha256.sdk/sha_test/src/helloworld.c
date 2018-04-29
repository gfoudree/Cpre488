/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "sha256.h"

#define SHA_BASE_ADDR 			0x43C00000
#define SHA_STATUS_OFFSET		0x00
#define SHA_HASHOUT_OFFSET		0x01 * 4
#define SHA_CTL_OFFSET			0x09 * 4
#define SHA_INPUT_OFFSET		0x0A * 4

//CTL Reg bit offsets
#define SHA_CTL_RESET_MASK 		(1 << 0)
#define SHA_CTL_UPDATE_MASK 	(1 << 1)
#define SHA_CTL_ENABLE_MASK 	(1 << 2)
#define SHA_CTL_SIZE_MASK		(1 << 3)

//Status Reg mask
#define SHA_STATUS_FINISHED_MASK	(1 << 0)

#define SHA_BENCHMARK_NUM_CALC	50000

uint32_t seed;

void write_input(uint32_t* data, uint32_t length)
{
	uint32_t* dataLoc = (uint32_t*)(SHA_BASE_ADDR + SHA_INPUT_OFFSET);

	for(int i = 0; i < length; i++)
	{
		*dataLoc++ = data[i];
	}
}

void read_input(uint32_t* data, uint32_t length)
{
	uint32_t* dataLoc = (uint32_t*)(SHA_BASE_ADDR + SHA_INPUT_OFFSET);

	for(int i = 0; i < length; i++)
	{
		data[i] = *dataLoc++;
	}
}

void read_sha256(uint32_t* data)
{
	uint32_t* dataLoc = (uint32_t*)(SHA_BASE_ADDR + SHA_HASHOUT_OFFSET);
	for(int i = 0; i < 8; i++)
	{
		data[i] = *dataLoc++;
	}
}

void print_hash(uint32_t* h)
{
	xil_printf("0x%8x", h[0]);

	for(int i = 1; i < 7; i++)
	{
		xil_printf("%8x", h[i]);
	}

	xil_printf("%8x\n\r", h[7]);
}

void sha256_benchmark_hw(void)
{
    for(int i = 0; i < SHA_BENCHMARK_NUM_CALC; i++)
    {
		//Reset IP Core
		Xil_Out32(SHA_BASE_ADDR + SHA_CTL_OFFSET, SHA_CTL_RESET_MASK);

		// one block sha256
		// "abc"
		// output: 0xba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
#define SIZE 16
		uint32_t abc[SIZE] = { 0x61626380, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
				0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
				0x00000000, 0x00000000, 0x00000018 };

		// indicate length of data
		uint32_t ctl = Xil_In32(SHA_BASE_ADDR + SHA_CTL_OFFSET);
		uint32_t val = ctl & ~SHA_CTL_SIZE_MASK;

		Xil_Out32(SHA_BASE_ADDR + SHA_CTL_OFFSET, val);

		//load string
		write_input(abc, SIZE);

		//enable ip initiate calculation
		val  = Xil_In32(SHA_BASE_ADDR + SHA_CTL_OFFSET) | SHA_CTL_ENABLE_MASK | SHA_CTL_UPDATE_MASK;
		Xil_Out32(SHA_BASE_ADDR + SHA_CTL_OFFSET, val);

		while(!(Xil_In32(SHA_BASE_ADDR + SHA_STATUS_OFFSET) & SHA_STATUS_FINISHED_MASK))
		{
//			xil_printf("waiting\r\n");
		}

		ctl = Xil_In32(SHA_BASE_ADDR + SHA_CTL_OFFSET);
		uint32_t h[8];
		read_sha256(h);
//		print_hash(h);
    }

    xil_printf("HW Benchmark Done.\r\n");
}

void sha256_benchmark_sw(void)
{
	for(int i = 0; i < SHA_BENCHMARK_NUM_CALC; i++)
	{
		BYTE text1[] = {"abc"};

		BYTE buf[SHA256_BLOCK_SIZE];
		SHA256_CTX ctx;

		sha256_init(&ctx);
		sha256_update(&ctx, text1, 3);
		sha256_final(&ctx, buf);
	}

	xil_printf("SW Benchmark Done.\r\n");
}

void sha256_demo_hw(void)
{
	//Reset IP Core
	Xil_Out32(SHA_BASE_ADDR + SHA_CTL_OFFSET, SHA_CTL_RESET_MASK);

	// one block sha256
	// "abc"
	// output: 0xba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
#define SIZE 16
	uint32_t abc[SIZE] = { 0x61626380, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
			0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
			0x00000000, 0x00000000, 0x00000018 };

	abc[0] = ( 0xFFFFFF00 & (seed << 8)) | 0x80;

	// indicate length of data
	uint32_t ctl = Xil_In32(SHA_BASE_ADDR + SHA_CTL_OFFSET);
	uint32_t val = ctl & ~SHA_CTL_SIZE_MASK;

	Xil_Out32(SHA_BASE_ADDR + SHA_CTL_OFFSET, val);

	//load string
	write_input(abc, SIZE);

	//enable ip initiate calculation
	val  = Xil_In32(SHA_BASE_ADDR + SHA_CTL_OFFSET) | SHA_CTL_ENABLE_MASK | SHA_CTL_UPDATE_MASK;
	Xil_Out32(SHA_BASE_ADDR + SHA_CTL_OFFSET, val);

	while(!(Xil_In32(SHA_BASE_ADDR + SHA_STATUS_OFFSET) & SHA_STATUS_FINISHED_MASK))
	{
//			xil_printf("waiting\r\n");
	}

	ctl = Xil_In32(SHA_BASE_ADDR + SHA_CTL_OFFSET);
	uint32_t h[8];
	read_sha256(h);
	print_hash(h);
}

void sha256_demo_sw(void)
{
	BYTE text1[4];

	text1[0] = (seed >> 16) & 0xFF;
	text1[1] = (seed >> 8)  & 0xFF;
	text1[2] = (seed >> 0)  & 0xFF;
	text1[3] = '\0';

	BYTE buf[SHA256_BLOCK_SIZE];
	SHA256_CTX ctx;

	sha256_init(&ctx);
	sha256_update(&ctx, text1, 3);
	sha256_final(&ctx, buf);

	xil_printf("0x");
	for(int i = 0; i < SHA256_BLOCK_SIZE; i++)
	{
		xil_printf("%2x", buf[i]);
	}
	xil_printf("\r\n");
}

int main()
{
    init_platform();
    seed = 0;

    uint32_t* sw = (uint32_t*)0x41210000;

    while(1)
    {
    	//sw1 is low
    	if(!((*sw >> 1) & 0x01))
		{
			// speed comparison

    		// sw0 is high
			if(*sw & 0x01)
			{
				//hw
				sha256_demo_hw();
			}
			else
			{
				//sw
				sha256_demo_sw();
			}
    	}
    	else
    	{
    		// sw0 is high
			if(*sw & 0x01)
			{
				//hw
				sha256_benchmark_hw();
			}
			else
			{
				//sw
				sha256_benchmark_sw();
			}
    	}
    	++seed;
    }



    cleanup_platform();
    return 0;
}
