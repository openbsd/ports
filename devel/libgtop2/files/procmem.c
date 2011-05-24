/* $OpenBSD: procmem.c,v 1.4 2011/05/24 10:40:47 jasper Exp $	*/

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
#include <glibtop/procmem.h>

#include <glibtop_suid.h>

#include <kvm.h>
#include <sys/param.h>
#include <sys/proc.h>
#include <sys/resource.h>
#include <uvm/uvm_extern.h>

#include <sys/vnode.h>
#include <ufs/ufs/quota.h>
#include <ufs/ufs/inode.h>

#include <sys/ucred.h>
#include <sys/sysctl.h>
#include <uvm/uvm.h>

/* Fixme ... */
#undef _KERNEL
#define _UVM_UVM_AMAP_I_H_ 1
#define _UVM_UVM_MAP_I_H_ 1
#include <uvm/uvm.h>

static const unsigned long _glibtop_sysdeps_proc_mem =
(1L << GLIBTOP_PROC_MEM_SIZE) +
(1L << GLIBTOP_PROC_MEM_VSIZE) +
(1L << GLIBTOP_PROC_MEM_RESIDENT) +
(1L << GLIBTOP_PROC_MEM_RSS) +
(1L << GLIBTOP_PROC_MEM_RSS_RLIM);

static const unsigned long _glibtop_sysdeps_proc_mem_share =
(1L << GLIBTOP_PROC_MEM_SHARE);

#ifndef LOG1024
#define LOG1024		10
#endif

/* these are for getting the memory statistics */
static int pageshift;		/* log base 2 of the pagesize */

/* define pagetok in terms of pageshift */
#define pagetok(size) ((size) << pageshift)

/* Init function. */

void
_glibtop_init_proc_mem_p (glibtop *server)
{
	register int pagesize;

	/* get the page size and calculate pageshift from it */
	pagesize = sysconf(_SC_PAGESIZE);
	pageshift = 0;
	while (pagesize > 1) {
		pageshift++;
		pagesize >>= 1;
	}

	/* we only need the amount of log(2)1024 for our conversion */
	pageshift -= LOG1024;

	server->sysdeps.proc_mem = _glibtop_sysdeps_proc_mem |
		_glibtop_sysdeps_proc_mem_share;
}

/* Provides detailed information about a process. */

void
glibtop_get_proc_mem_p (glibtop *server, glibtop_proc_mem *buf,
			pid_t pid)
{
	struct kinfo_proc2 *pinfo;

	int count;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PROC_MEM), 0);

	memset (buf, 0, sizeof (glibtop_proc_mem));

	if (server->sysdeps.proc_mem == 0)
		return;

	/* It does not work for the swapper task. */
	if (pid == 0) return;

	/* Get the process data */
	pinfo = kvm_getproc2 (server->machine.kd, KERN_PROC_PID, pid,
			      sizeof (*pinfo), &count);
	if ((pinfo == NULL) || (count < 1)) {
		glibtop_warn_io_r (server, "kvm_getprocs (%d)", pid);
		return;
	}

       buf->rss_rlim = pinfo[0].p_uru_maxrss;
       buf->vsize = buf->size = (guint64)pagetok
	       (pinfo[0].p_vm_tsize + pinfo[0].p_vm_dsize + pinfo[0].p_vm_ssize)
	       << LOG1024;
       buf->resident = buf->rss = (guint64)pagetok
               (pinfo[0].p_vm_rssize) << LOG1024;

	/* Now we get the shared memory. */

	buf->share = pinfo[0].p_uru_ixrss;

	buf->flags = _glibtop_sysdeps_proc_mem |
		_glibtop_sysdeps_proc_mem_share;
}
