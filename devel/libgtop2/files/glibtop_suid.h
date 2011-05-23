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

#ifndef __GLIBTOP_SUID_H__
#define __GLIBTOP_SUID_H__

G_BEGIN_DECLS

#if _IN_LIBGTOP
#include <sys/param.h>
#endif

#define KI_PROC(ki) (&(ki))->kp_proc)
#define KI_EPROC(ki) (&(ki))->kp_eproc)

#define FORCEUREAD	1
#define UREADOK(ki)	(FORCEUREAD || (KI_PROC(ki)->p_flag & P_INMEM))

static inline void glibtop_suid_enter (glibtop *server) {
	setregid (server->machine.gid, server->machine.egid);
};

static inline void glibtop_suid_leave (glibtop *server) {
	if (setregid (server->machine.egid, server->machine.gid))
		_exit (1);
};

void
glibtop_init_p (glibtop *server, const unsigned long features,
		const unsigned flags);
void
glibtop_open_p (glibtop *server, const char *program_name,
		const unsigned long features,
		const unsigned flags);

G_END_DECLS

#endif
