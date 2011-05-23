/* Copyright (C) 1998-99 Martin Baulig
   This file is part of LibGTop 1.0.

   Contributed by Martin Baulig <martin@home-of-linux.org>, April 1998.

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
#include <glibtop/procuid.h>

#include <glibtop_suid.h>

static const unsigned long _glibtop_sysdeps_proc_uid =
(1L << GLIBTOP_PROC_UID_UID) + (1L << GLIBTOP_PROC_UID_EUID) +
(1L << GLIBTOP_PROC_UID_GID) +
(1L << GLIBTOP_PROC_UID_EGID) + (1L << GLIBTOP_PROC_UID_PID) +
(1L << GLIBTOP_PROC_UID_PPID) + (1L << GLIBTOP_PROC_UID_PGRP) +
(1L << GLIBTOP_PROC_UID_TPGID) + (1L << GLIBTOP_PROC_UID_PRIORITY) +
(1L << GLIBTOP_PROC_UID_NICE);

static const unsigned long _glibtop_sysdeps_proc_uid_groups =
0L;

/* Init function. */

void
_glibtop_init_proc_uid_p (glibtop *server)
{
	server->sysdeps.proc_uid = _glibtop_sysdeps_proc_uid |
		_glibtop_sysdeps_proc_uid_groups;
}

/* Provides detailed information about a process. */

void
glibtop_get_proc_uid_p (glibtop *server, glibtop_proc_uid *buf,
			pid_t pid)
{
#if defined (__OpenBSD__)
	struct kinfo_proc2 *pinfo;
#else
	struct kinfo_proc *pinfo;
#endif
	int count = 0;

#if LIBGTOP_VERSION_CODE >= 1001000
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
	struct ucred ucred;
	void *ucred_ptr;
#endif
#endif

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_UID), 0);

	memset (buf, 0, sizeof (glibtop_proc_uid));

	/* It does not work for the swapper task. */
	if (pid == 0) return;

	/* Get the process information */
#if defined (__OpenBSD__)
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

#define	PROC_RUID	ki_ruid
#define	PROC_SVUID	ki_svuid
#define	PROC_RGID	ki_rgid
#define	PROC_SVGID	ki_svgid
#define	PROC_PPID	ki_ppid
#define	PROC_PGID	ki_pgid
#define	PROC_TPGID	ki_tpgid
#define	PROC_NICE	ki_nice
#define	PROC_PRIORITY	ki_pri.pri_user

#elif defined (__OpenBSD__)

#define PROC_RUID	p_ruid
#define PROC_SVUID	p_svuid
#define PROC_RGID	p_rgid
#define PROC_SVGID	p_svgid
#define PROC_PID	p_pid
#define PROC_PPID	p_ppid
#define PROC_PGID	p__pgid
#define PROC_TPGID	p_tpgid
#define PROC_NICE	p_nice
#define PROC_PRIORITY	p_priority

#else

#define	PROC_RUID	kp_eproc.e_pcred.p_ruid
#define	PROC_SVUID	kp_eproc.e_pcred.p_svuid
#define	PROC_RGID	kp_eproc.e_pcred.p_rgid
#define	PROC_SVGID	kp_eproc.e_pcred.p_svgid
#define	PROC_PPID	kp_eproc.e_ppid
#define	PROC_PGID	kp_eproc.e_pgid
#define	PROC_TPGID	kp_eproc.e_tpgid
#define	PROC_NICE	kp_proc.p_nice
#define	PROC_PRIORITY	kp_proc.p_priority

#endif

	buf->uid  = pinfo [0].PROC_RUID;
	buf->euid = pinfo [0].PROC_SVUID;
	buf->gid  = pinfo [0].PROC_RGID;
	buf->egid = pinfo [0].PROC_SVGID;

	buf->pid   = pinfo [0].PROC_PID;
	buf->ppid  = pinfo [0].PROC_PPID;
	buf->pgrp  = pinfo [0].PROC_PGID;
	buf->tpgid = pinfo [0].PROC_TPGID;

	buf->nice     = pinfo [0].PROC_NICE;
#if defined(__NetBSD__) && defined(SACTIVE)
	buf->priority = 0;
#else
	buf->priority = pinfo [0].PROC_PRIORITY;
#endif

	/* Set the flags for the data we're about to return*/
	buf->flags = _glibtop_sysdeps_proc_uid;

	/* Use LibGTop conditionals here so we can more easily merge this
	 * code into the LIBGTOP_STABLE_1_0 branch. */
#if 0
	/* This probably also works with other versions, but not yet
	 * tested. Please remove the conditional if this is true. */
#if defined(__NetBSD__) && (__NetBSD_Version__ >= 104000000)
	ucred_ptr = (void *) pinfo [0].kp_eproc.e_pcred.pc_ucred;

	if (ucred_ptr) {
		if (kvm_read (server->machine.kd, (unsigned long) ucred_ptr,
			      &ucred, sizeof (ucred)) != sizeof (ucred)) {
			glibtop_warn_io_r (server, "kvm_read (ucred)");
		} else {
			int count = (ucred.cr_ngroups < GLIBTOP_MAX_GROUPS) ?
				ucred.cr_ngroups : GLIBTOP_MAX_GROUPS;
			int i;

			for (i = 0; i < count; i++)
				buf->groups [i] = ucred.cr_groups [i];
			buf->ngroups = count;

			buf->flags |= _glibtop_sysdeps_proc_uid_groups;
		}
	}
#endif
#endif
}
