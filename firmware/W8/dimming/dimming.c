/*
 * dimming.c
 *
 *  Created on: Aug 22, 2024
 *      Author: kwojcik
 */
#include "dimming.h"

int iter=0;

void Led_setPhaseShift(struct LEDstruct *LED){
	int period;
	int buff;
	period = LED->Hlimit - LED->Llimit;
	buff = period * LED->offset;
	buff = buff/3;
	buff = buff + LED->Llimit;
	LED ->cntr = buff;
}

void Led_RgbTriangleIncr(struct LEDstruct * LED){

	if(LED->cntr <= LED ->Llimit && !LED->flag ){
		LED->flag = 1;

	}

	if(LED->cntr >= LED ->Hlimit && LED->flag ){
		LED->flag = 0;

	}

	if(LED->flag){
		LED->cntr++;
	}
	else{
		LED->cntr--;
	}

	*LED->CCR = LED->cntr;
}
