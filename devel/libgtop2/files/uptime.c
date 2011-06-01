/* $OpenBSD: uptime.c,v 1.6 2011/06/01 07:24:49 jasper Exp $	*/

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
#include <glibtop.h>
#include <glibtop/error.h>
#include <glibtop/uptime.h>

#include <glibtop/cpu.h>

static const unsigned long _glibtop_sysdeps_uptime =
(1L << GLIBTOP_UPTIME_UPTIME) + (1L << GLIBTOP_UPTIME_IDLETIME) +
(1UL << GLIBTOP_UPTIME_BOOT_TIME);

static const unsigned long _required_cpu_flags =
(1L << GLIBTOP_CPU_TOTAL) + (1L << GLIBTOP_CPU_IDLE) +
(1L << GLIBTOP_CPU_FREQUENCY);

/* Init function. */

void
_glibtop_init_uptime_p (glibtop *server)
{
	server->sysdeps.uptime = _glibtop_sysdeps_uptime;
}

/* Provides uptime and idle time. */

void
glibtop_get_uptime_p (glibtop *server, glibtop_uptime *buf)
{
	time_t now;
	int mib[2];
	struct timeval boottime;
	size_t size;
	glibtop_cpu cpu;

	mib[0] = CTL_KERN;
	mib[1] = KERN_BOOTTIME;
	size = sizeof(boottime);
	if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 &&
	    boottime.tv_sec != 0) {
		time(&now);
		buf->uptime = now - boottime.tv_sec;
		buf->boot_time = boottime.tv_sec;
	}

	glibtop_get_cpu_p (server, &cpu);

	/* Put something clever in buf->idletime: CP_IDLE. */
	buf->idletime = (double) cpu.idle / (double) cpu.frequency;
	buf->idletime /= (double) (server->ncpu + 1);

	buf->flags = _glibtop_sysdeps_uptime;
}
