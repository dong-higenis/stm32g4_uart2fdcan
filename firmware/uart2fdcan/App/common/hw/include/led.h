#ifndef LED_H_
#define LED_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "hw_def.h"


#define LED_MAX_CH  HW_LED_MAX_CH

#define LED_STATUS_CH  0
#define LED_LINK_CH    1
#define LED_ERROR_CH   2

bool ledInit(void);
void ledOn(uint8_t ch);
void ledOff(uint8_t ch);
void ledToggle(uint8_t ch);

#ifdef __cplusplus
}
#endif

#endif
