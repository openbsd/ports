#include "apm.h"

int get_power_info(struct apm_power_info *power_info)
{
	int fd, ret;

	fd = open(APMDEV, O_RDONLY, 0);
	if(fd == -1)
	{
		warn("Could not open " APMDEV);
		goto ERR;
	}

	ret = ioctl(fd, APM_IOC_GETPOWER, power_info);
	if(ret == -1)
	{
		warn("Could not ioctl " APMDEV);
		goto ERR;
	}

	close(fd);
	return 0;

	ERR:
	close(fd);
	return -1;
}
