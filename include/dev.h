#ifndef _DEV_H_
#define _DEV_H_

#ifdef __cplusplus
extern "C" {
#endif

/* LibOPT */
#include "opt.h"

/* FANN */
#include "fann.h"

double Optimize_ANN_Architecture(Agent *a, va_list arg); /* It optimizes an ANN architecture */

#ifdef __cplusplus
}
#endif

#endif
