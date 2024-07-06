#ifndef BSP_H_
#define BSP_H_


#ifdef __cplusplus
extern "C" {
#endif

#include "def.h"


bool bspInit(void);

void logPrintf(const char *fmt, ...);
void delay(uint32_t time_ms);
uint32_t millis(void);
uint32_t micros(void);


#ifdef __cplusplus
}
#endif

#endif
