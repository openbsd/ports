/* $OpenBSD: netlist.c,v 1.2 2011/05/23 19:35:54 jasper Exp $	*/

/*
   This file is part of LibGTop 2.0.

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
#include <glibtop/netlist.h>
#include <glibtop/error.h>

#include <net/if.h>


static const unsigned long _glibtop_sysdeps_netlist = (1 << GLIBTOP_NETLIST_NUMBER);

/* Init function. */

void
_glibtop_init_netlist_s (glibtop *server)
{
	server->sysdeps.netlist = _glibtop_sysdeps_netlist;
}


char**
glibtop_get_netlist_s (glibtop *server, glibtop_netlist *buf)
{
	struct if_nameindex *ifstart, *ifs;
	GPtrArray *devices;

	glibtop_init_s (&server, GLIBTOP_SYSDEPS_NETLIST, 0);

	memset (buf, 0, sizeof (glibtop_netlist));

	ifs = ifstart = if_nameindex();

	devices = g_ptr_array_new();

	while(ifs && ifs->if_name) {
		g_ptr_array_add(devices, g_strdup(ifs->if_name));
		buf->number++;
		ifs++;
	}

	if_freenameindex(ifstart);

	buf->flags = _glibtop_sysdeps_netlist;

	g_ptr_array_add(devices, NULL);

	return (char **) g_ptr_array_free(devices, FALSE);
}

