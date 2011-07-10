/* $OpenBSD: mem.c,v 1.11 2011/07/10 15:23:01 jasper Exp $	*/

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
#include <glibtop/mem.h>

#include <glibtop_suid.h>

#include <sys/mount.h>
#include <sys/sysctl.h>
#include <sys/vmmeter.h>
#include <uvm/uvm_extern.h>
#include <uvm/uvm_param.h>

static const unsigned long _glibtop_sysdeps_mem =
(1L << GLIBTOP_MEM_TOTAL)  + (1L << GLIBTOP_MEM_USED) +
(1L << GLIBTOP_MEM_FREE)   + (1L << GLIBTOP_MEM_SHARED) +
(1L << GLIBTOP_MEM_BUFFER) + (1L << GLIBTOP_MEM_CACHED) +
(1L << GLIBTOP_MEM_USER)   + (1L << GLIBTOP_MEM_LOCKED);

#ifndef LOG1024
#define LOG1024		10
#endif

/* these are for getting the memory statistics */
static int pageshift;		/* log base 2 of the pagesize */

/* define pagetok in terms of pageshift */
#define pagetok(size) ((size) << pageshift)

/* nlist structure for kernel access */
static struct nlist nlst [] = {
	{ "_bufpages" },
	{ 0 }
};

/* MIB array for sysctl */
static int vmmeter_mib [] = { CTL_VM, VM_METER };
static int uvmexp_mib  [] = { CTL_VM, VM_UVMEXP };
static int bcstats_mib [] = { CTL_VFS, VFS_GENERIC, VFS_BCACHESTAT };

/* Init function. */

void
_glibtop_init_mem_p (glibtop *server)
{
	register int pagesize;

	if (kvm_nlist (server->machine.kd, nlst) < 0) {
		glibtop_warn_io_r (server, "kvm_nlist (mem)");
		return;
	}

	/* get the page size and calculate pageshift from it */
	pagesize = sysconf(_SC_PAGESIZE);
	pageshift = 0;
	while (pagesize > 1) {
		pageshift++;
		pagesize >>= 1;
	}

	/* we only need the amount of log(2)1024 for our conversion */
	pageshift -= LOG1024;

	server->sysdeps.mem = _glibtop_sysdeps_mem;
}

void
glibtop_get_mem_p (glibtop *server, glibtop_mem *buf)
{
	struct vmtotal vmt;
	struct uvmexp uvmexp;
	struct bcachestats bcstats;
	u_int v_used_count;
	u_int v_total_count;
	u_int v_free_count;
	size_t length;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_MEM), 0);

	memset (buf, 0, sizeof (glibtop_mem));

	if (server->sysdeps.mem == 0)
		return;

	/* Get the data from sysctl */
	length = sizeof (vmt);
	if (sysctl (vmmeter_mib, 2, &vmt, &length, NULL, 0)) {
		glibtop_warn_io_r (server, "sysctl (vm.vmmeter)");
		bzero(&vmt, sizeof(length));
		return;
	}

	length = sizeof (uvmexp);
	if (sysctl (uvmexp_mib, 2, &uvmexp, &length, NULL, 0)) {
		glibtop_warn_io_r (server, "sysctl (vm.uvmexp)");
		bzero(&uvmexp, sizeof(length));
		return;
	}

	length = sizeof (bcstats);
	if (sysctl (bcstats_mib, 3, &bcstats, &length, NULL, 0)) {
		glibtop_warn_io_r (server, "sysctl (vfs.generic.bcstats)");
		bzero(&bcstats, sizeof(length));
		return;
	}

	/*
	 * t_arm = active real memory
	 * t_rm = total real memory in use
	 * t_free = free memory pages
	 */
	v_total_count = vmt.t_rm + vmt.t_free;
	v_used_count = vmt.t_rm;
	v_free_count = vmt.t_free;

	/* convert memory stats to Kbytes */
	buf->total = (guint64) pagetok (v_total_count) << LOG1024;
	buf->used  = (guint64) pagetok (v_used_count) << LOG1024;
	buf->free  = (guint64) pagetok (v_free_count) << LOG1024;
	buf->locked = (guint64) pagetok (uvmexp.wired) << LOG1024;
	buf->shared = (guint64) pagetok (vmt.t_rmshr) << LOG1024;
	buf->cached = (guint64) pagetok (bcstats.numbufpages) << LOG1024;
	buf->buffer = 0;

	buf->user = buf->total - buf->free - buf->cached - buf->buffer;

	/* Set the values to return */
	buf->flags = _glibtop_sysdeps_mem;
}
