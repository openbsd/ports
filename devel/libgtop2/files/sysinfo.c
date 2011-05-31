/* $OpenBSD: sysinfo.c,v 1.4 2011/05/31 14:02:26 jasper Exp $	*/

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

#include <config.h>
#include <sys/param.h>
#include <sys/types.h>
#include <sys/sysctl.h>
#include <glibtop/error.h>
#include <glibtop/cpu.h>
#include <glibtop/sysinfo.h>

static const unsigned long _glibtop_sysdeps_sysinfo =
(1L << GLIBTOP_SYSINFO_CPUINFO);

static glibtop_sysinfo sysinfo = { .flags = 0 };

static void
init_sysinfo (glibtop *server)
{
	char *model = NULL;
	int mib[2];
	guint ncpus = 1;
	guint mhz = 0;
	size_t len;

	if (G_LIKELY (sysinfo.flags))
		return;

	glibtop_init_s (&server, GLIBTOP_SYSDEPS_CPU, 0);

	mib[0] = CTL_HW;

	/* Get the number of CPU's present */
	mib[1] = HW_NCPU;

	len = sizeof(ncpus);
	if (sysctl(mib, 2, &ncpus, &len, NULL, 0) != 0)
		printf("Couldn't determine hw.ncpu.\n");

	/* Get the CPU model */
	mib[1] = HW_MODEL;
	len = 0;

	if (sysctl(mib, 2, NULL, &len, NULL, 0) != -1) {
		model = g_malloc (len);
		sysctl(mib, 2, model, &len, NULL, 0);
	} else {
		printf("Couldn't determine hw.model.\n");
	}

	/* Get the clockrate */
	mib[1] = HW_CPUSPEED;
	len = sizeof(mhz);

	if (sysctl(mib, 2, &mhz, &len, NULL, 0) != 0)
		printf("Couldn't determine hw.cpuspeed.\n");

	for (sysinfo.ncpu = 0;
	     sysinfo.ncpu < GLIBTOP_NCPU && sysinfo.ncpu < ncpus;
	     sysinfo.ncpu++) {
		glibtop_entry * const cpuinfo = &sysinfo.cpuinfo[sysinfo.ncpu];

		cpuinfo->labels = g_ptr_array_new ();

		cpuinfo->values = g_hash_table_new_full(g_str_hash,
							g_str_equal,
							NULL, g_free);

		g_ptr_array_add (cpuinfo->labels, "processor");
		g_hash_table_insert (cpuinfo->values, "processor",
				     g_strdup_printf("%u", (guint)sysinfo.ncpu));

		g_ptr_array_add (cpuinfo->labels, "vendor_id");
		g_hash_table_insert (cpuinfo->values, "vendor_id",
				     g_strdup(model));

		g_ptr_array_add (cpuinfo->labels, "model name");
		g_hash_table_insert (cpuinfo->values, "model name",
				     g_strdup(model));

		g_ptr_array_add (cpuinfo->labels, "cpu MHz");
		g_hash_table_insert (cpuinfo->values, "cpu MHz",
				     g_strdup_printf("%d", mhz));
	}

	g_free (model);

	sysinfo.flags = _glibtop_sysdeps_sysinfo;
}

const glibtop_sysinfo *
glibtop_get_sysinfo_s (glibtop *server)
{
	init_sysinfo (server);
	return &sysinfo;
}
