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
#include "xparameters.h"
#include "xuartps_hw.h"
#include "xuartps.h"
#include "sleep.h"

#define TIME_OUT_US (1000000 / 10)

typedef struct _attitude_t
{
	float angx;
	float angy;
	int heading;
} attitude_t;

typedef struct _imu_t
{
	float accX;
	float accY;
	float accZ;

	float gyrX;
	float gyrY;
	float gyrZ;

	float magX;
	float magY;
	float magZ;
} imu_t;

int uart_get(XUartPs* inst, u8* data, u32 numBytes)
{
	u32 recBytes = 0;
	u32 toCount = 0;
	while(recBytes < numBytes)
	{
		u32 bytes = XUartPs_Recv(inst, (u8*)(&data[recBytes]), numBytes - recBytes);
		recBytes += bytes;

		//check for timeout
		if(bytes == 0)
		{
			++toCount;
			if(toCount >= TIME_OUT_US)
			{
				//timed out
				return recBytes;
			}
		}
		else
		{
			toCount = 0;
		}
		usleep(10);
	}

	//success
	return recBytes;
}

int uart_put(XUartPs* inst, u8* data, u32 numBytes)
{
	u32 sentBytes = 0;
	while(sentBytes < numBytes)
	{
		sentBytes += XUartPs_Send(inst, (u8*)(&data[sentBytes]), numBytes - sentBytes);
	}

	//success
	return 0;
}

void bt_configure(XUartPs* inst)
{
	u8 buff[6];

	xil_printf("Send CMD: SM,3<cr>...\r\n");
    uart_put(inst, (u8*)"SM,3\r", 5);
    u32 num = uart_get(inst, buff, 5);
	buff[num] = '\0';
	xil_printf((char*)buff);

	xil_printf("Send CMD: SR,81ebb68b7913<cr>...\r\n");
    uart_put(inst, (u8*)"SR,81ebb68b7913\r", 16);
    num = uart_get(inst, buff, 5);
	buff[num] = '\0';
	xil_printf((char*)buff);

	xil_printf("Send CMD: SP,0000<cr>...\r\n");
    uart_put(inst, (u8*)"SP,0000\r", 8);
    num = uart_get(inst, buff, 5);
	buff[num] = '\0';
	xil_printf((char*)buff);
}

void bt_init(XUartPs* inst)
{
    u8 buff[20];

	//enter command mode
	uart_put(inst, (u8*)"$$$", 3);
	u32 num = uart_get(inst, buff, 3);
    buff[num] = '\0';
    xil_printf((char*)buff);
    xil_printf("\r\n");

    bt_configure(inst);

    xil_printf("After...\r\n");
    dump_config(inst);

	//exit command mode
	uart_put(inst, (u8*)"---\r", 4);
	num = uart_get(inst, buff, 4);
    buff[num] = '\0';
    xil_printf((char*)buff);
    xil_printf("\r\n");
}

void dump_config(XUartPs* inst)
{
	//enable timeout
//	XUartPs_SetRecvTimeout(inst, 500);

	u8 buff[500];

    uart_put(inst, (u8*)"D\r", 2);
    u32 num = uart_get(inst, buff, 500);
    buff[num] = '\0';
    xil_printf((char*)buff);
    xil_printf("\r\n");

    uart_put(inst, (u8*)"O\r", 2);
    num = uart_get(inst, buff, 500);
    buff[num] = '\0';
    xil_printf((char*)buff);
    xil_printf("\r\n");

    uart_put(inst, (u8*)"E\r", 2);
    num = uart_get(inst, buff, 500);
    buff[num] = '\0';
    xil_printf((char*)buff);
    xil_printf("\r\n");
}

void uart_clear_rx_fifo(XUartPs* inst)
{
	u8 dummy[64];
	uart_get(inst, dummy, 64);
}

int quad_put(XUartPs* inst, u8* data, u32 numBytes)
{
	u8 msgLength = numBytes + 5;
	u8 msg[msgLength];
	u8* msgPtr = msg;

	u8 cs;

	*msgPtr++ = '$';
	*msgPtr++ = 'M';
	*msgPtr++ = '<';
	*msgPtr++ = (numBytes - 1);
	cs = (numBytes - 1);

	for(int i = 0; i < numBytes; i++)
	{
		*msgPtr++ = data[i];
		cs ^= data[i];
	}

	*msgPtr++ = cs;

	uart_clear_rx_fifo(inst);
	if(uart_put(inst, msg, msgLength))
	{
		return 1;
	}

	return 0;
}

int quad_get(XUartPs* inst, u8* data, u32 numBytes)
{
	u8 msgLength = numBytes + 5;
	u8 msg[msgLength];
	memset(msg, 0, msgLength * sizeof(u8));

	u8* msgPtr = msg;

	uart_get(inst, msg, msgLength);

	if(*msgPtr++ != '$')
	{
		return 1;
	}

	if(*msgPtr++ != 'M')
	{
		return 1;
	}

	if(*msgPtr++ != '>')
	{
		return 1;
	}

	if(*msgPtr++ != numBytes - 1)
	{
		return 1;
	}

	u8 cs = numBytes - 1;

	for(int i = 0; i < numBytes; i++)
	{
		data[i] = *msgPtr++;
		cs ^= data[i];
	}

	if(cs != *msgPtr)
	{
		return 1;
	}

	return 0;
}

int quad_getAttitude(XUartPs* inst, attitude_t* at)
{
	u8 cmd = 0x6c;
	u8 data[7];

	if(quad_put(inst, &cmd, 1))
	{
		return 1;
	}

	if(quad_get(inst, data, 7))
	{
		return 1;
	}

	if(cmd != data[0])
	{
		return 1;
	}

	at->angx = ((float)((int16_t)((data[2] << 8) | data[1])) / 10);
	at->angy = ((float)((int16_t)((data[4] << 8) | data[3])) / 10);
	at->heading = ((int16_t)(((data[6] << 8) | data[5])));

	return 0;
}

int quad_getIMU(XUartPs* inst, imu_t* imu)
{
	u8 cmd = 102;
	u8 data[19];

	if(quad_put(inst, &cmd, 1))
	{
		return 1;
	}

	if(quad_get(inst, data, 19))
	{
		return 1;
	}

	if(cmd != data[0])
	{
		return 1;
	}

	imu->accX = ((float)((int16_t)((data[2] << 8) | data[1])) / 256);
	imu->accY = ((float)((int16_t)((data[4] << 8) | data[3])) / 256);
	imu->accZ = ((float)((int16_t)((data[6] << 8) | data[5])) / 256);
	imu->gyrX = ((float)((int16_t)((data[8] << 8) | data[7])) / 4.096);
	imu->gyrY = ((float)((int16_t)((data[10] << 8) | data[9])) / 4.096);
	imu->gyrZ = ((float)((int16_t)((data[12] << 8) | data[11])) / 4.096);
	imu->magX = ((float)((int16_t)((data[14] << 8) | data[13])) / 1);
	imu->magY = ((float)((int16_t)((data[16] << 8) | data[15])) / 1);
	imu->magZ = ((float)((int16_t)((data[18] << 8) | data[17])) / 1);

	return 0;
}

int main()
{
    init_platform();

    XUartPs uartInst;
    XUartPs_Config* config = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);

    XUartPs_CfgInitialize(&uartInst, config, XPAR_PS7_UART_0_BASEADDR);

//    bt_init(&uartInst);

    u8 buff[20];

//    u8 msg[6] = {0x24, 0x4d, 0x3c, 0x00, 0x6c, 0x6c};
//    uart_put(&uartInst, msg, 6);
//    u32 num = uart_get(&uartInst, buff, 20);

    while(1)
    {
        imu_t at;
        quad_getIMU(&uartInst, &at);
        char str[100];
//        sprintf(str, "%3.3f\t\t%3.3f\t\t%3d\r\n", at.angx, at.angy, at.heading);
        xil_printf(str);
        usleep(100);
    }





    cleanup_platform();
    return 0;
}
