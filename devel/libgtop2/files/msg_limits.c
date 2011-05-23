/* $OpenBSD: msg_limits.c,v 1.3 2011/05/23 19:35:54 jasper Exp $	*/

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
#include <glibtop/msg_limits.h>

#include <glibtop_suid.h>

/* Define the appropriate macro (if any) to get declaration of `struct
 * msginfo'.  Needed on, at least, FreeBSD. */
#if defined (STRUCT_MSGINFO_NEEDS_KERNEL)
#define KERNEL 1
#elif defined (STRUCT_MSGINFO_NEEDS__KERNEL)
#define _KERNEL 1
#endif

#include <sys/ipc.h>
#include <sys/msg.h>

static const unsigned long _glibtop_sysdeps_msg_limits =
(1L << GLIBTOP_IPC_MSGMAX) + (1L << GLIBTOP_IPC_MSGMNI) +
(1L << GLIBTOP_IPC_MSGMNB) + (1L << GLIBTOP_IPC_MSGTQL) +
(1L << GLIBTOP_IPC_MSGSSZ);

/* The values in this structure never change at runtime, so we only
 * read it once during initialization. We have to use the name `_msginfo'
 * since `msginfo' is already declared external in <sys/msg.h>. */
static struct msginfo _msginfo;

/* nlist structure for kernel access */
static struct nlist nlst [] = {
	{ "_msginfo" },
	{ 0 }
};

/* Init function. */

void
_glibtop_init_msg_limits_p (glibtop *server)
{
	if (kvm_nlist (server->machine.kd, nlst) < 0) {
		glibtop_warn_io_r (server, "kvm_nlist (msg_limits)");
		return;
	}

	if (kvm_read (server->machine.kd, nlst [0].n_value,
		      &_msginfo, sizeof (_msginfo)) != sizeof (_msginfo)) {
		glibtop_warn_io_r (server, "kvm_read (msginfo)");
		return;
	}

	server->sysdeps.msg_limits = _glibtop_sysdeps_msg_limits;
}

/* Provides information about sysv ipc limits. */

void
glibtop_get_msg_limits_p (glibtop *server, glibtop_msg_limits *buf)
{
	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_MSG_LIMITS), 0);

	memset (buf, 0, sizeof (glibtop_msg_limits));

	if (server->sysdeps.msg_limits == 0)
		return;

	buf->msgmax = _msginfo.msgmax;
	buf->msgmni = _msginfo.msgmni;
	buf->msgmnb = _msginfo.msgmnb;
	buf->msgtql = _msginfo.msgtql;
	buf->msgssz = _msginfo.msgtql;

	buf->flags = _glibtop_sysdeps_msg_limits;
}
