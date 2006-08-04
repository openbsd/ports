/*
 * $OpenBSD: param.i386_obsd40.h,v 1.1 2006/08/04 16:34:43 naddy Exp $
 * Jim Rees, University of Michigan CITI
 */

#ifndef	AFS_PARAM_H
#define	AFS_PARAM_H

#ifndef IGNORE_STDS_H
#include <sys/param.h>
#endif

#define SYS_NAME		"i386_obsd40"
#define SYS_NAME_ID		SYS_NAME_ID_i386_obsd40

#define AFS_XBSD_ENV		1	/* {Free,Open,Net}BSD */
#define AFS_X86_XBSD_ENV	1

#define AFS_NAMEI_ENV		1	/* User space interface to file system */
#define AFS_64BIT_ENV		1
#define AFS_64BIT_CLIENT	1
#define AFS_64BIT_IOPS_ENV	1	/* Needed for NAMEI */
#define AFS_OBSD_ENV		1
#define AFS_OBSD34_ENV		1
#define AFS_OBSD35_ENV		1
#define AFS_OBSD36_ENV		1
#define AFS_OBSD37_ENV		1
#define AFS_OBSD38_ENV		1
#define AFS_NONFSTRANS		1
#define AFS_VM_RDWR_ENV		1
#define AFS_VFS_ENV		1
#define AFS_VFSINCL_ENV		1

#define FTRUNC O_TRUNC

#define AFS_SYSCALL		208
#define AFS_MOUNT_AFS		"afs"

#define RXK_LISTENER_ENV	1
#define AFS_GCPAGS	        0	/* if nonzero, garbage collect PAGs */
#define AFS_USE_GETTIMEOFDAY    1	/* use gettimeofday to implement rx clock */

#define AFSLITTLE_ENDIAN	1

#ifndef IGNORE_STDS_H
#include <afs/afs_sysnames.h>
#endif

/* Extra kernel definitions (from kdefs file) */
#ifdef _KERNEL
#define AFS_GLOBAL_SUNLOCK	1
#define	AFS_SHORTGID		0	/* are group id's short? */

#if	!defined(ASSEMBLER) && !defined(__LANGUAGE_ASSEMBLY__)
enum vcexcl { NONEXCL, EXCL };

#ifndef MIN
#define MIN(A,B) ((A) < (B) ? (A) : (B))
#endif
#ifndef MAX
#define MAX(A,B) ((A) > (B) ? (A) : (B))
#endif

#endif /* ! ASSEMBLER & ! __LANGUAGE_ASSEMBLY__ */
#endif /* _KERNEL */

#endif /* AFS_PARAM_H */
