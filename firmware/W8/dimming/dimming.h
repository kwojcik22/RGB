/*
 * dimming.h
 *
 *  Created on: Aug 21, 2024
 *      Author: kwojcik
 */

#ifndef DIMMING_H_
#define DIMMING_H_


#include "main.h"

struct LEDstruct{
	uint32_t cntr;
	uint32_t Hlimit;
	uint32_t Llimit;
	uint32_t* CCR;
	uint8_t offset:2;
	uint8_t flag:1;
};



void Led_setPhaseShift(struct LEDstruct *LED);
void Led_RgbTriangleIncr(struct LEDstruct *LED);

#endif /* DIMMING_H_ */
