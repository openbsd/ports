/* <linux/const.h> compatibility shim. */

#ifndef _COMPAT_LINUX_CONST_H_
#define _COMPAT_LINUX_CONST_H_

#define _AC(X,Y)	(X##Y)
#define _AT(T,X)	((T)(X))

#define _UL(x)		(_AC(x, UL))
#define _ULL(x)		(_AC(x, ULL))

#define _BITUL(x)	(_UL(1) << (x))
#define _BITULL(x)	(_ULL(1) << (x))

#define __ALIGN_KERNEL(x, a) \
	__ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
#define __ALIGN_KERNEL_MASK(x, mask)	(((x) + (mask)) & ~(mask))

#endif /* _COMPAT_LINUX_CONST_H_ */
