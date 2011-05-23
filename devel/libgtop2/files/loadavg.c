/* $OpenBSD: loadavg.c,v 1.2 2011/05/23 19:35:53 jasper Exp $	*/

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
#include <glibtop/loadavg.h>

#include <glibtop_suid.h>

static const unsigned long _glibtop_sysdeps_loadavg =
(1L << GLIBTOP_LOADAVG_LOADAVG);

/* Init function. */

void
_glibtop_init_loadavg_p (glibtop *server)
{
	server->sysdeps.loadavg = _glibtop_sysdeps_loadavg;
}

/* Provides load averange. */

void
glibtop_get_loadavg_p (glibtop *server, glibtop_loadavg *buf)
{
	double ldavg[3];
	int i;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_LOADAVG), 0);

	memset (buf, 0, sizeof (glibtop_loadavg));

	getloadavg (ldavg, 3);

	/* fill in the struct */
	buf->flags = _glibtop_sysdeps_loadavg;
	for (i = 0; i < 3; i++) {
		buf->loadavg [i] = ldavg [i];
	} /* end for */
}
