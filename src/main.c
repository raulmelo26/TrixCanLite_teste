/**
  ******************************************************************************
  * @file    main.c
  * @author  Raul Melo
  * @version V1.0
  * @date    04-April-2018
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f0xx.h"
			
void Delay(int counter)
{
  int i;

  for(i = 0; i < counter*1000; i++);
}

int main(void)
{
	GPIO_InitTypeDef gpio;
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN, ENABLE);

	GPIO_StructInit(&gpio);
	gpio.GPIO_Pin = GPIO_Pin_1;
	gpio.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Init(GPIOB, &gpio);

	while(1){
		GPIO_SetBits(GPIOB, GPIO_Pin_1);
		Delay(1000);
		GPIO_ResetBits(GPIOB, GPIO_Pin_1);
		Delay(1000);
	}
}
