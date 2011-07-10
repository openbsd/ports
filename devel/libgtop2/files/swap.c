/* $OpenBSD: swap.c,v 1.7 2011/07/10 15:23:01 jasper Exp $	*/

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
#include <glibtop/swap.h>

#include <glibtop_suid.h>

static const unsigned long _glibtop_sysdeps_swap =
(1L << GLIBTOP_SWAP_TOTAL) + (1L << GLIBTOP_SWAP_USED) +
(1L << GLIBTOP_SWAP_FREE) + (1L << GLIBTOP_SWAP_PAGEIN) +
(1L << GLIBTOP_SWAP_PAGEOUT);

#include <sys/vmmeter.h>
#include <uvm/uvm_extern.h>
#include <sys/swap.h>

static int mib_uvmexp [] = { CTL_VM, VM_UVMEXP };

/* Init function. */

void
_glibtop_init_swap_p (glibtop *server)
{
	server->sysdeps.swap = _glibtop_sysdeps_swap;
}

/* Provides information about swap usage. */

/*
 * This function is based on a program called swapinfo written
 * by Kevin Lahey <kml@rokkaku.atl.ga.us>.
 */

void
glibtop_get_swap_p (glibtop *server, glibtop_swap *buf)
{
	struct swapent *swaplist;

	int nswap, i;
	guint64 avail = 0, inuse = 0;

	int blocksize = 512; /* Default blocksize, use getbize() ? */
	int blockdiv = blocksize / DEV_BSIZE;

	struct uvmexp uvmexp;
	size_t length_uvmexp;
        static int swappgsin = -1;
	static int swappgsout = -1;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_SWAP), 0);

	memset (buf, 0, sizeof (glibtop_swap));

	if (server->sysdeps.swap == 0)
		return;

	length_uvmexp = sizeof (uvmexp);
	if (sysctl (mib_uvmexp, 2, &uvmexp, &length_uvmexp, NULL, 0)) {
		glibtop_warn_io_r (server, "sysctl (vm.uvmexp)");
		return;
	}

        if (swappgsin < 0) {
		buf->pagein = 0;
		buf->pageout = 0;
	} else {
		buf->pagein = uvmexp.swapins - swappgsin;
		buf->pageout = uvmexp.swapouts - swappgsout;
	}

	swappgsin = uvmexp.swapins;
	swappgsout = uvmexp.swapouts;

	nswap = swapctl (SWAP_NSWAP, 0, 0);
	if (nswap < 0) {
		glibtop_warn_io_r (server, "swapctl (SWAP_NSWAP)");
		return;
	}

	swaplist = g_malloc (nswap * sizeof (struct swapent));

	if (swapctl (SWAP_STATS, swaplist, nswap) != nswap) {
		glibtop_warn_io_r (server, "swapctl (SWAP_STATS)");
		g_free (swaplist);
		return;
	}

	/* Total things up, returns in 512 bytes blocks! */
	for (i = 0; i < nswap; i++) {
		if (swaplist[i].se_flags & SWF_ENABLE) {
			avail += (swaplist[i].se_nblks / blockdiv);
			inuse += (swaplist[i].se_inuse / blockdiv);
		}
	}

	/* Convert back to bytes, the libgtop2 is not clear about unites... */
	avail *= 512;
	inuse *= 512;

	g_free (swaplist);

	buf->flags = _glibtop_sysdeps_swap;

	buf->used = inuse;
	buf->free = avail;

	buf->total = inuse + avail;
}
