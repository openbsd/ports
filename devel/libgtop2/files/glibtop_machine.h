/* $OpenBSD: glibtop_machine.h,v 1.3 2011/05/23 19:35:53 jasper Exp $	*/

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

#ifndef __GLIBTOP_MACHINE_H__
#define __GLIBTOP_MACHINE_H__

#include <sys/param.h>
#include <nlist.h>
#include <kvm.h>
#include <sys/dkstat.h>
#include <time.h>
#include <sys/user.h>
#include <sys/types.h>
#include <sys/sysctl.h>

#include <fcntl.h>

G_BEGIN_DECLS

typedef struct _glibtop_machine glibtop_machine;

struct _glibtop_machine
{
	uid_t uid, euid;
	gid_t gid, egid;

	/* The kernel descriptor, used by kvm_* calls.  We keep and re-use
	 * it rather than re-getting it for almost all function
	 * invocations. */
	kvm_t *kd;
};

G_END_DECLS

#endif /* __GLIBTOP_MACHINE_H__ */
