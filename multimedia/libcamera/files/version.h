/* <linux/version.h> compatibility shim. */

#ifndef _COMPAT_LINUX_VERSION_H_
#define _COMPAT_LINUX_VERSION_H_

#define KERNEL_VERSION(a, b, c) \
	(((a) << 16) + ((b) << 8) + ((c) > 255 ? 255 : (c)))

#define LINUX_VERSION_CODE		KERNEL_VERSION(0, 0, 0)
#define LINUX_VERSION_MAJOR		0
#define LINUX_VERSION_PATCHLEVEL	0
#define LINUX_VERSION_SUBLEVEL		0

#endif /* _COMPAT_LINUX_VERSION_H_ */
