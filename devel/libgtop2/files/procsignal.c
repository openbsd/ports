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
#include <glibtop/procsignal.h>

#include <glibtop_suid.h>

#include <sys/param.h>

#ifdef __FreeBSD__
#include <osreldate.h>
#endif

static const unsigned long _glibtop_sysdeps_proc_signal =
(1L << GLIBTOP_PROC_SIGNAL_SIGNAL) +
(1L << GLIBTOP_PROC_SIGNAL_BLOCKED) +
(1L << GLIBTOP_PROC_SIGNAL_SIGIGNORE) +
(1L << GLIBTOP_PROC_SIGNAL_SIGCATCH);

/* Init function. */

void
_glibtop_init_proc_signal_p (glibtop *server)
{
	server->sysdeps.proc_signal = _glibtop_sysdeps_proc_signal;
}

void
glibtop_get_proc_signal_p (glibtop *server,
			   glibtop_proc_signal *buf,
			   pid_t pid)
{
#if defined(__OpenBSD__)
	struct kinfo_proc2 *pinfo;
#else
	struct kinfo_proc *pinfo;
#endif
	int count = 0;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_SIGNAL), 0);

	memset (buf, 0, sizeof (glibtop_proc_signal));

	/* It does not work for the swapper task. */
	if (pid == 0) return;

	/* Get the process information */
#if defined(__OpenBSD__)
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid,
			      sizeof (*pinfo), &count);
#else
	pinfo = kvm_getprocs (server->machine.kd, KERN_PROC_PID, pid, &count);
#endif
	if ((pinfo == NULL) || (count != 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return;
	}

#if (defined(__FreeBSD__) && (__FreeBSD_version >= 500013)) || defined(__FreeBSD_kernel__)

#define	PROC_SIGLIST	ki_siglist
#define	PROC_SIGMASK	ki_sigmask
#define	PROC_SIGIGNORE	ki_sigignore
#define	PROC_SIGCATCH	ki_sigcatch

#elif defined(__OpenBSD__)

/* nothing to see here, move along */

#else

#define	PROC_SIGLIST	kp_proc.p_siglist
#define	PROC_SIGMASK	kp_proc.p_sigmask
#define	PROC_SIGIGNORE	kp_proc.p_sigignore
#define	PROC_SIGCATCH	kp_proc.p_sigcatch

#endif

	/* signal: mask of pending signals.
	 *         pinfo [0].kp_proc.p_siglist
	 */
#if defined(__OpenBSD__)
	buf->signal [0] = pinfo [0].p_siglist;
#else
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 105150000)
	buf->signal [0] = pinfo [0].kp_proc.p_sigctx.ps_siglist.__bits[0];
#elif (defined(__NetBSD__) && (NSIG > 32)) || \
      (defined(__FreeBSD__) && (__FreeBSD_version >= 400011) || defined(__FreeBSD_kernel__))
	buf->signal [0] = pinfo [0].PROC_SIGLIST.__bits[0];
#else
	buf->signal [0] = pinfo [0].kp_proc.p_siglist;
#endif
#endif /* __OpenBSD__ */

	/* blocked: mask of blocked signals.
	 *          pinfo [0].kp_proc.p_sigmask
	 */
#if defined(__OpenBSD__)
	buf->blocked [0] = pinfo [0].p_sigmask;
#else
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 105150000)
	buf->blocked [0] = pinfo [0].kp_proc.p_sigctx.ps_sigmask.__bits[0];
#elif (defined(__NetBSD__) && (NSIG > 32)) || \
      (defined(__FreeBSD__) && (__FreeBSD_version >= 400011) || defined(__FreeBSD_kernel__))
	buf->blocked [0] = pinfo [0].PROC_SIGMASK.__bits[0];
#else
	buf->blocked [0] = pinfo [0].kp_proc.p_sigmask;
#endif
#endif /* __OpenBSD__ */

	/* sigignore: mask of ignored signals.
	 *            pinfo [0].kp_proc.p_sigignore
	*/
#if defined(__OpenBSD__)
	buf->sigignore [0] = pinfo [0].p_sigignore;
#else
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 105150000)
	buf->sigignore [0] = pinfo [0].kp_proc.p_sigctx.ps_sigignore.__bits[0];
#elif (defined(__NetBSD__) && (NSIG > 32)) || \
      (defined(__FreeBSD__) && (__FreeBSD_version >= 400011) || defined(__FreeBSD_kernel__))
	buf->sigignore [0] = pinfo [0].PROC_SIGIGNORE.__bits[0];
#else
	buf->sigignore [0] = pinfo [0].kp_proc.p_sigignore;
#endif
#endif /* __OpenBSD__ */

	/* sigcatch: mask of caught signals.
	 *           pinfo [0].kp_proc.p_sigcatch
	*/
#if defined(__OpenBSD__)
	buf->sigcatch [0] = pinfo [0].p_sigcatch;
#else
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 105150000)
	buf->sigcatch [0] = pinfo [0].kp_proc.p_sigctx.ps_sigcatch.__bits[0];
#elif (defined(__NetBSD__) && (NSIG > 32)) || \
      (defined(__FreeBSD__) && (__FreeBSD_version >= 400011) || defined(__FreeBSD_kernel__))
	buf->sigcatch [0] = pinfo [0].PROC_SIGCATCH.__bits[0];
#else
	buf->sigcatch [0] = pinfo [0].kp_proc.p_sigcatch;
#endif
#endif /* __OpenBSD__ */

	buf->flags = _glibtop_sysdeps_proc_signal;
}
