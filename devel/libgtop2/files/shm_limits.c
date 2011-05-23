/* $OpenBSD: shm_limits.c,v 1.3 2011/05/23 19:35:56 jasper Exp $	*/

/* Copyright (C) 1998-99 Martin Baulig
   This file is part of LibGTop 1.0.

   Contributed by Martin Baulig <martin@home-of-linux.org>, August 1998.

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
#include <glibtop/shm_limits.h>

#include <glibtop_suid.h>

#include <sys/ipc.h>
#include <sys/shm.h>

static unsigned long _glibtop_sysdeps_shm_limits =
(1L << GLIBTOP_IPC_SHMMAX) + (1L << GLIBTOP_IPC_SHMMIN) +
(1L << GLIBTOP_IPC_SHMMNI) + (1L << GLIBTOP_IPC_SHMSEG) +
(1L << GLIBTOP_IPC_SHMALL);

/* The values in this structure never change at runtime, so we only
 * read it once during initialization. We have to use the name `_shminfo'
 * since `shminfo' is already declared external in <sys/shm.h>. */
static struct shminfo _shminfo;

/* nlist structure for kernel access */
static struct nlist nlst [] = {
	{ "_shminfo" },
	{ 0 }
};

/* Init function. */

void
_glibtop_init_shm_limits_p (glibtop *server)
{
	if (kvm_nlist (server->machine.kd, nlst) < 0) {
		glibtop_warn_io_r (server, "kvm_nlist (shm_limits)");
		return;
	}

	if (kvm_read (server->machine.kd, nlst [0].n_value,
		      &_shminfo, sizeof (_shminfo)) != sizeof (_shminfo)) {
		glibtop_warn_io_r (server, "kvm_read (shminfo)");
		return;
	}

	server->sysdeps.shm_limits = _glibtop_sysdeps_shm_limits;
}

/* Provides information about sysv ipc limits. */

void
glibtop_get_shm_limits_p (glibtop *server, glibtop_shm_limits *buf)
{
	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_SHM_LIMITS), 0);

	memset (buf, 0, sizeof (glibtop_shm_limits));

	if (server->sysdeps.shm_limits == 0)
		return;

	buf->shmmax = _shminfo.shmmax;
	buf->shmmin = _shminfo.shmmin;
	buf->shmmni = _shminfo.shmmni;
	buf->shmseg = _shminfo.shmseg;
	buf->shmall = _shminfo.shmall;

	buf->flags = _glibtop_sysdeps_shm_limits;
}
