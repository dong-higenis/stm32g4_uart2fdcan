#include "led.h"
#include "cli.h"


#ifdef _USE_HW_LED




const typedef struct 
{
  GPIO_TypeDef *port;
  uint16_t      pin;
  GPIO_PinState on_state;
  GPIO_PinState off_state;
} led_tbl_t;


static led_tbl_t led_tbl[LED_MAX_CH] = 
{
	{GPIOB, GPIO_PIN_4,  GPIO_PIN_RESET, GPIO_PIN_SET},
	{GPIOB, GPIO_PIN_5,  GPIO_PIN_RESET, GPIO_PIN_SET},
	{GPIOB, GPIO_PIN_6,  GPIO_PIN_RESET, GPIO_PIN_SET},
};


#ifdef _USE_HW_CLI
static void cliLed(cli_args_t *args);
#endif



bool ledInit(void)
{
#ifdef _USE_HW_CLI
  cliAdd("led", cliLed);
#endif
  return true;
}

void ledOn(uint8_t ch)
{
  if (ch >= LED_MAX_CH) return;

  HAL_GPIO_WritePin(led_tbl[ch].port, led_tbl[ch].pin, led_tbl[ch].on_state);
}

void ledOff(uint8_t ch)
{
  if (ch >= LED_MAX_CH) return;

  HAL_GPIO_WritePin(led_tbl[ch].port, led_tbl[ch].pin, led_tbl[ch].off_state);
}

void ledToggle(uint8_t ch)
{
  if (ch >= LED_MAX_CH) return;

  HAL_GPIO_TogglePin(led_tbl[ch].port, led_tbl[ch].pin);
}

#ifdef _USE_HW_CLI
void cliLed(cli_args_t *args)
{
  bool ret = false;

  if (args->argc == 1 && args->isStr(0, "info"))
  {
    for (int i=0; i<LED_MAX_CH; i++)
    {
      cliPrintf("_DEF_LED%d\n", i+1);
    }
    ret = true;
  }

  if (args->argc == 1 && args->isStr(0, "test"))
  {
	uint8_t index = 0;
	while (cliKeepLoop()) {
		ledToggle(index);
		delay(100);
		ledToggle(index);
		index = (index+1) % LED_MAX_CH;

	}
	ret = true;
  }

  if (ret == false)
  {
    cliPrintf("led info\n");
    cliPrintf("led test\n");
  }
}
#endif
#endif

