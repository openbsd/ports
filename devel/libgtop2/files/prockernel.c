/* Copyright (C) 1998 Joshua Sled
   This file is part of LibGTop 1.0.

   Contributed by Joshua Sled <jsled@xcf.berkeley.edu>, July 1998.

   LibGTop is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License,
   or (at your option) any later version.

   LibGTop is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
   for more details.

   You should have received a copy of the GNU General Public License
   along with LibGTop; see the file COPYING. If not, write to the
   Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
*/

#include <config.h>
#include <glibtop.h>
#include <glibtop/error.h>
#include <glibtop/prockernel.h>

#include <glibtop_suid.h>

#include <kvm.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <sys/proc.h>
#if (!defined __OpenBSD__) && (!defined __bsdi__)
#include <sys/user.h>
#endif
#if !defined(__bsdi__) && !(defined(__FreeBSD__) && defined(__alpha__)) && \
    !defined(__NetBSD__) && !defined(__OpenBSD__)
#include <machine/pcb.h>
#endif

#include <unistd.h>
#include <fcntl.h>

#ifdef __FreeBSD__
#include <osreldate.h>
#endif

#ifdef __NetBSD__
#include <machine/vmparam.h>
#include <machine/pmap.h>
#ifdef __arm32__
#define	KERNBASE	KERNEL_BASE
#endif
#endif

#ifdef __NetBSD__
#include <machine/vmparam.h>
#include <machine/pmap.h>
#ifdef __arm32__
#define	KERNBASE	KERNEL_BASE
#endif
#endif


static const unsigned long _glibtop_sysdeps_proc_kernel_pstats =
(1L << GLIBTOP_PROC_KERNEL_MIN_FLT) +
(1L << GLIBTOP_PROC_KERNEL_MAJ_FLT)
#if !defined(__OpenBSD__)
+ (1L << GLIBTOP_PROC_KERNEL_CMIN_FLT) +
(1L << GLIBTOP_PROC_KERNEL_CMAJ_FLT)
#endif
;

#if !defined(__OpenBSD__)
static const unsigned long _glibtop_sysdeps_proc_kernel_pcb =
(1L << GLIBTOP_PROC_KERNEL_KSTK_EIP) +
(1L << GLIBTOP_PROC_KERNEL_KSTK_ESP);
#endif

static const unsigned long _glibtop_sysdeps_proc_kernel_wchan =
(1L << GLIBTOP_PROC_KERNEL_NWCHAN) +
(1L << GLIBTOP_PROC_KERNEL_WCHAN);

/* Init function. */

void
_glibtop_init_proc_kernel_p (glibtop *server)
{
	server->sysdeps.proc_kernel = _glibtop_sysdeps_proc_kernel_pstats |
#if !defined(__OpenBSD__)
		_glibtop_sysdeps_proc_kernel_pcb |
#endif
		_glibtop_sysdeps_proc_kernel_wchan;
}

void
glibtop_get_proc_kernel_p (glibtop *server,
			   glibtop_proc_kernel *buf,
			   pid_t pid)
{
#if defined(__OpenBSD__)
	struct kinfo_proc2 *pinfo;
#else
	struct kinfo_proc *pinfo;
#if !(defined(__FreeBSD__) || defined(__FreeBSD_kernel__))
	struct user *u_addr = (struct user *)USRSTACK;
	struct pstats pstats;
	struct pcb pcb;
#endif /* --FreeBSD__ */
#endif /* __OpenBSD__ */
	int count;

	char filename [BUFSIZ];
	struct stat statb;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_KERNEL), 0);

	memset (buf, 0, sizeof (glibtop_proc_kernel));

	if (server->sysdeps.proc_time == 0)
		return;

	/* It does not work for the swapper task. */
	if (pid == 0) return;

	/* Get the process information */
#if defined(__OpenBSD__)
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid,
			      sizeof(*pinfo), &count);
#else
	pinfo = kvm_getprocs (server->machine.kd, KERN_PROC_PID, pid, &count);
#endif /* __OpenBSD__ */
	if ((pinfo == NULL) || (count != 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return;
	}

#if (defined(__FreeBSD__) && (__FreeBSD_version >= 500013)) || defined(__FreeBSD_kernel__)

#define	PROC_WCHAN	ki_wchan
#define	PROC_WMESG	ki_wmesg
#define	PROC_WMESG	ki_wmesg

#elif defined(__OpenBSD__)
/* empty, not for too long though! */

#else

#define	PROC_WCHAN	kp_proc.p_wchan
#define	PROC_WMESG	kp_proc.p_wmesg
#define	PROC_WMESG	kp_eproc.e_wmesg

#endif

#if defined(__OpenBSD__)

	buf->nwchan = pinfo[0].p_wchan;
	if (pinfo[0].p_wchan && pinfo[0].p_wmesg)
		g_strlcpy(buf->wchan, pinfo[0].p_wmesg,
			  sizeof buf->wchan);
	
	buf->min_flt = pinfo[0].p_uru_minflt;
	buf->maj_flt = pinfo[0].p_uru_majflt;

	buf->flags |= (_glibtop_sysdeps_proc_kernel_wchan
		| _glibtop_sysdeps_proc_kernel_pstats);

#else

#if !defined(__NetBSD__) || !defined(SACTIVE)
	buf->nwchan = (unsigned long) pinfo [0].PROC_WCHAN &~ KERNBASE;

	buf->flags |= (1L << GLIBTOP_PROC_KERNEL_NWCHAN);

	if (pinfo [0].PROC_WCHAN && pinfo [0].PROC_WMESG) {
		g_strlcpy (buf->wchan, pinfo [0].PROC_WMESG,
			 sizeof buf->wchan);
		buf->flags |= (1L << GLIBTOP_PROC_KERNEL_WCHAN);
	} else {
		buf->wchan [0] = 0;
	}
#endif

#if !(defined(__FreeBSD__) || defined(__FreeBSD_kernel__))

	/* Taken from `saveuser ()' in `/usr/src/bin/ps/ps.c'. */

	/* [FIXME]: /usr/include/sys/user.h tells me that the user area
	 *          may or may not be at the same kernel address in all
	 *          processes, but I don't see any way to get that address.
	 *          Since `ps' simply uses its own address, I think it's
	 *          safe to do this here, too. */

	/* NOTE: You need to mount the /proc filesystem to make
	 *       `kvm_uread' work. */

	sprintf (filename, "/proc/%d/mem", (int) pid);
	if (stat (filename, &statb)) return;

	glibtop_suid_enter (server);

#if !defined(__NetBSD__) || !defined(SACTIVE)
#ifdef __NetBSD__
	/* On NetBSD, there is no kvm_uread(), and kvm_read() always reads
	 * from kernel memory.  */

	if (kvm_read (server->machine.kd,
#else

	if ((pinfo [0].kp_proc.p_flag & P_INMEM) &&
	    kvm_uread (server->machine.kd, &(pinfo [0]).kp_proc,
#endif
		       (unsigned long) &u_addr->u_stats,
		       (char *) &pstats, sizeof (pstats)) == sizeof (pstats))
		{
			/*
			 * The u-area might be swapped out, and we can't get
			 * at it because we have a crashdump and no swap.
			 * If it's here fill in these fields, otherwise, just
			 * leave them 0.
			 */

			buf->min_flt = (guint64) pstats.p_ru.ru_minflt;
			buf->maj_flt = (guint64) pstats.p_ru.ru_majflt;
			buf->cmin_flt = (guint64) pstats.p_cru.ru_minflt;
			buf->cmaj_flt = (guint64) pstats.p_cru.ru_majflt;

			buf->flags |= _glibtop_sysdeps_proc_kernel_pstats;
		}

#ifdef __NetBSD__
	if (kvm_read (server->machine.kd,
#else
	if ((pinfo [0].kp_proc.p_flag & P_INMEM) &&
	    kvm_uread (server->machine.kd, &(pinfo [0]).kp_proc,
#endif
		       (unsigned long) &u_addr->u_pcb,
		       (char *) &pcb, sizeof (pcb)) == sizeof (pcb))
		{
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#ifndef __alpha__
#if (__FreeBSD_version >= 300003) || defined(__FreeBSD_kernel__)
			buf->kstk_esp = (guint64) pcb.pcb_esp;
			buf->kstk_eip = (guint64) pcb.pcb_eip;
#else
			buf->kstk_esp = (guint64) pcb.pcb_ksp;
			buf->kstk_eip = (guint64) pcb.pcb_pc;
#endif
#else
			/*xxx FreeBSD/Alpha? */
#endif
#else
#ifdef __i386__
			buf->kstk_esp = (guint64) pcb.pcb_tss.tss_esp0;
#ifdef __bsdi__
			buf->kstk_eip = (guint64) pcb.pcb_tss.tss_eip;
#else
			buf->kstk_eip = (guint64) pcb.pcb_tss.__tss_eip;
#endif
#else
#if defined(__NetBSD__)
#if defined(__m68k__)
			buf->kstk_esp = (guint64) pcb.pcb_usp;
			buf->kstk_eip = (guint64) 0;
#elif defined(__x86_64__)
			buf->kstk_esp = (guint64) pcb.pcb_usersp;
			buf->kstk_eip = (guint64) 0;
#elif (defined(__arm32__) || defined(__powerpc__))
			buf->kstk_esp = (guint64) pcb.pcb_sp;
			buf->kstk_eip = (guint64) 0;
#elif defined(__mipsel__)
			buf->kstk_esp = (guint64) pcb.pcb_context[8];
			buf->kstk_eip = (guint64) 0;
#elif defined(__sparc__)
			buf->kstk_esp = (guint64) pcb.pcb_sp;
			buf->kstk_eip = (guint64) pcb.pcb_pc;
#elif defined(__alpha__)
			buf->kstk_esp = (guint64) pcb.pcb_context[9];
			buf->kstk_eip = (guint64) pcb.pcb_context[8];
#else
			/* provide some defaults for other platforms */
			buf->kstk_esp = (guint64) 0;
			buf->kstk_eip = (guint64) 0;
#endif /* ${MACHINE_ARCH} */
#endif /* __NetBSD__ */
			buf->flags |= _glibtop_sysdeps_proc_kernel_pcb;
#endif
#endif
		}
#endif

	/* Taken from `wchan ()' in `/usr/src/bin/ps/print.c'. */

	glibtop_suid_leave (server);

#else
	/* XXX: the code here was, quite frankly, junk, and almost
	 * certainly wrong - remove it all, leave these fields
	 * unpopulated, and give up until such time as the right
	 * code is produced for both FreeBSD 4.x and 5.x
	 */
	return;
#endif /* __FreeBSD__ */

#endif /* __OpenBSD */
}
