/* $OpenBSD: procargs.c,v 1.3 2011/05/23 19:35:54 jasper Exp $	*/

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
#include <glibtop/procargs.h>

#include <glibtop_suid.h>

#include <kvm.h>
#include <sys/param.h>
#include <sys/proc.h>

static const unsigned long _glibtop_sysdeps_proc_args =
(1L << GLIBTOP_PROC_ARGS_SIZE);

/* Init function. */

void
_glibtop_init_proc_args_p (glibtop *server)
{
	server->sysdeps.proc_args = _glibtop_sysdeps_proc_args;
}

/* Provides detailed information about a process. */

char *
glibtop_get_proc_args_p (glibtop *server, glibtop_proc_args *buf,
			 pid_t pid, unsigned max_len)
{
	struct kinfo_proc2 *pinfo;
	char *retval, **args, **ptr;
	size_t size = 0, pos = 0;
	int count;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_ARGS), 0);

	memset (buf, 0, sizeof (glibtop_proc_args));

	/* swapper, init, pagedaemon, vmdaemon, update - this doen't work. */
	if (pid < 5) return NULL;

	glibtop_suid_enter (server);

	/* Get the process data */
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid,
			       sizeof (*pinfo), &count);
	if ((pinfo == NULL) || (count < 1)) {
		glibtop_suid_leave (server);
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return NULL;
	}

	args = kvm_getargv2 (server->machine.kd, pinfo, max_len);
	if (args == NULL) {
		glibtop_suid_leave (server);
		glibtop_warn_io_r (server, "kvm_getargv (%d)", pid);
		return NULL;
	}

	glibtop_suid_leave (server);

	for (ptr = args; *ptr; ptr++)
		size += strlen (*ptr)+1;

	size += 2;
	retval = g_malloc0 (size);

	for (ptr = args; *ptr; ptr++) {
		const size_t len = strlen (*ptr)+1;
		memcpy (retval+pos, *ptr, len);
		pos += len;
	}

	buf->size = pos ? pos-1 : 0;

	buf->flags = _glibtop_sysdeps_proc_args;

	return retval;
}
