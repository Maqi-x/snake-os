#ifndef SLEEP_H
#define SLEEP_H

#include "defs.h"

#define SECOND 1000

void init_timer();

dword uptime_ms();
void sleep(dword duration);

#endif // SLEEP_H
