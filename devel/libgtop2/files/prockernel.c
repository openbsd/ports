/* $OpenBSD: prockernel.c,v 1.4 2011/05/31 14:02:26 jasper Exp $	*/

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
#include <unistd.h>
#include <fcntl.h>

static const unsigned long _glibtop_sysdeps_proc_kernel_pstats =
(1L << GLIBTOP_PROC_KERNEL_MIN_FLT) +
(1L << GLIBTOP_PROC_KERNEL_MAJ_FLT);

static const unsigned long _glibtop_sysdeps_proc_kernel_wchan =
(1L << GLIBTOP_PROC_KERNEL_NWCHAN) +
(1L << GLIBTOP_PROC_KERNEL_WCHAN);

/* Init function. */

void
_glibtop_init_proc_kernel_p (glibtop *server)
{
	server->sysdeps.proc_kernel = _glibtop_sysdeps_proc_kernel_pstats |
		_glibtop_sysdeps_proc_kernel_wchan;
}

void
glibtop_get_proc_kernel_p (glibtop *server,
			   glibtop_proc_kernel *buf,
			   pid_t pid)
{
	struct kinfo_proc2 *pinfo;
	int count;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_KERNEL), 0);

	memset (buf, 0, sizeof (glibtop_proc_kernel));

	if (server->sysdeps.proc_time == 0)
		return;

	/* It does not work for the swapper task. */
	if (pid == 0) return;

	/* Get the process information */
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid,
			      sizeof(*pinfo), &count);
	if ((pinfo == NULL) || (count != 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return;
	}

	buf->nwchan = pinfo[0].p_wchan;
	if (pinfo[0].p_wchan && pinfo[0].p_wmesg)
		g_strlcpy(buf->wchan, pinfo[0].p_wmesg,
			  sizeof buf->wchan);
	
	buf->min_flt = pinfo[0].p_uru_minflt;
	buf->maj_flt = pinfo[0].p_uru_majflt;

	buf->flags |= (_glibtop_sysdeps_proc_kernel_wchan
		| _glibtop_sysdeps_proc_kernel_pstats);

}
