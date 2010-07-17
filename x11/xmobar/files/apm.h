#ifndef _CBATT_H_
#define _CBATT_H_

#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <machine/apmvar.h>

#define APMDEV "/dev/apm"

int get_power_info(struct apm_power_info *power_info);

#endif /* _CBATT_H_ */
