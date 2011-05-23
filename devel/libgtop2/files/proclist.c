/* $OpenBSD: proclist.c,v 1.3 2011/05/23 19:35:55 jasper Exp $	*/

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
#include <glibtop/proclist.h>

#include <glibtop_suid.h>

static const unsigned long _glibtop_sysdeps_proclist =
(1L << GLIBTOP_PROCLIST_TOTAL) + (1L << GLIBTOP_PROCLIST_NUMBER) +
(1L << GLIBTOP_PROCLIST_SIZE);

/* Fetch list of currently running processes.
 * The interface of this function is a little bit different from the others:
 * buf->flags is only set if the call succeeded, in this case pids_chain,
 * a list of the pids of all currently running processes is returned,
 * buf->number is the number of elements of this list and buf->size is
 * the size of one single element (sizeof (unsigned)). The total size is
 * stored in buf->total.
 *
 * The calling function has to free the memory to which a pointer is returned.
 *
 * IMPORTANT NOTE:
 *   On error, this function MUST return NULL and set buf->flags to zero !
 *   On success, it returnes a pointer to a list of buf->number elements
 *   each buf->size big. The total size is stored in buf->total.
 * The calling function has to free the memory to which a pointer is returned.
 *
 * On error, NULL is returned and buf->flags is zero. */

/* Init function. */

void
_glibtop_init_proclist_p (glibtop *server)
{
	server->sysdeps.proclist = _glibtop_sysdeps_proclist;
}

pid_t *
glibtop_get_proclist_p (glibtop *server, glibtop_proclist *buf,
			gint64 real_which, gint64 arg)
{
	struct kinfo_proc2 *pinfo;
	unsigned *pids = NULL;
	int which, count;
	int i,j;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROCLIST), 0);

	memset (buf, 0, sizeof (glibtop_proclist));

	which = (int)(real_which & GLIBTOP_KERN_PROC_MASK);

	/* Get the process data */
	pinfo = kvm_getproc2 (server->machine.kd, which, arg,
			      sizeof (*pinfo), &count);
	if ((pinfo == NULL) || (count < 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (proclist)");
		return NULL;
	}
	count--;

	/* Allocate count objects in the pids_chain array
	 * Same as malloc is pids is NULL, which it is. */
	pids = g_realloc (pids, count * sizeof (unsigned));
	/* Copy the pids over to this chain */
	for (i=j=0; i < count; i++) {
#define PROC_STAT	p_stat
#define PROC_RUID	p_ruid
#define PROC_PID	p_pid

		if ((real_which & GLIBTOP_EXCLUDE_IDLE) &&
		    (pinfo[i].PROC_STAT != SRUN))
			continue;
		else if ((real_which & GLIBTOP_EXCLUDE_SYSTEM) &&
			 (pinfo[i].PROC_RUID == 0))
			continue;
		pids [j++] = (unsigned) pinfo[i].PROC_PID;
	} /* end for */
	/* Set the fields in buf */
	buf->number = j;
	buf->size = sizeof (unsigned);
	buf->total = j * sizeof (unsigned);
	buf->flags = _glibtop_sysdeps_proclist;
	return pids;
}
