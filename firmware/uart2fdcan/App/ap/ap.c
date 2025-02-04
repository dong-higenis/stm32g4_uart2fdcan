#include "ap.h"

bool led_blink_500ms_flag = false;

void apInit (void)
{
  cliOpen(HW_UART_CH_DEBUG, 115200);
  logBoot(false);
}

void canLedStatus()
{
	if(canIsOpen(0))
	{
		ledOn(LED_LINK_CH);
	}
	else
	{
		ledOff(LED_LINK_CH);
		ledOff(LED_ERROR_CH);
		return;
	}

	uint32_t err = canGetError(0);

	if(err == CAN_ERR_BUS_OFF) //bus off
	{
		ledOn(LED_ERROR_CH);
	}
	else if(err != CAN_ERR_NONE) //CAN_ERR_WARNING or CAN_ERR_PASSIVE
	{
		if(led_blink_500ms_flag)
		{
			ledOn(LED_ERROR_CH);
		}
		else
		{
			ledOff(LED_ERROR_CH);
		}
	}
	else
	{
		ledOff(LED_ERROR_CH);
	}
}

void apMain (void)
{
	uint32_t pre_time;
	pre_time = millis ();
	ledOff(LED_STATUS_CH);
	while (1)
	{
		if (millis () - pre_time >= 500)
		{
			pre_time = millis ();
			led_blink_500ms_flag = !led_blink_500ms_flag;
		}
		if(led_blink_500ms_flag)
		{
			ledOn(LED_STATUS_CH);
		}
		else
		{
			ledOff(LED_STATUS_CH);
		}
		canLedStatus();
		cliMain();
	}
}


