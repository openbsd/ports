/* $OpenBSD: ppp.c,v 1.3 2011/05/23 19:35:54 jasper Exp $	*/

/* Copyright (C) 1998-99 Martin Baulig
   This file is part of LibGTop 1.0.

   Contributed by Martin Baulig <martin@home-of-linux.org>, October 1998.

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
#include <glibtop/ppp.h>

#include <glibtop_suid.h>

#ifdef HAVE_I4B

#include <net/if.h>
#include <net/if_types.h>

#ifdef HAVE_NET_IF_VAR_H
#include <net/if_var.h>
#endif

#include <net/netisr.h>
#include <net/route.h>

#include <net/if_sppp.h>

/* Read `misc/i4b_acct.txt' for details ... */
#ifdef HAVE_I4B_ACCT
#include <machine/i4b_acct.h>
#endif

static const unsigned long _glibtop_sysdeps_ppp =
(1L << GLIBTOP_PPP_STATE);

#ifdef HAVE_I4B_ACCT
static const unsigned long _glibtop_sysdeps_ppp_acct =
(1L << GLIBTOP_PPP_BYTES_IN) + (1L << GLIBTOP_PPP_BYTES_OUT);
#endif

#endif /* HAVE_I4B */

/* nlist structure for kernel access */
static struct nlist nlst [] = {
#ifdef HAVE_I4B
	{ "_i4bisppp_softc" },
#endif
	{ 0 }
};

/* Init function. */

void
_glibtop_init_ppp_p (glibtop *server)
{
#ifdef HAVE_I4B
#ifdef HAVE_I4B_ACCT
	server->sysdeps.ppp = _glibtop_sysdeps_ppp |
		_glibtop_sysdeps_ppp_acct;
#else
	server->sysdeps.ppp = _glibtop_sysdeps_ppp;
#endif
#endif /* HAVE_I4B */

	if (kvm_nlist (server->machine.kd, nlst) < 0)
		glibtop_error_io_r (server, "kvm_nlist");
}

/* Provides information about ppp usage. */

void
glibtop_get_ppp_p (glibtop *server, glibtop_ppp *buf, unsigned short device)
{
#ifdef HAVE_I4B
#ifdef HAVE_I4B_ACCT
	struct i4bisppp_softc data;
#else
	struct sppp data;
#endif
	int phase;

	glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_PPP), 0);

	memset (buf, 0, sizeof (glibtop_ppp));

	if (kvm_read (server->machine.kd, nlst [0].n_value,
		      &data, sizeof (data)) != sizeof (data))
		glibtop_error_io_r (server, "kvm_read (i4bisppp_softc)");

#ifdef HAVE_I4B_ACCT
	phase = data.sc_if_un.scu_sp.pp_phase;
#else
	/* FIXME: Which FreeBSD version have this field and
	 *        which not. */
#if 0
	phase = data.pp_phase;
#endif
#endif

	switch (phase) {
#ifdef HAVE_I4B_ACCT
	case PHASE_DEAD:
	case PHASE_TERMINATE:
		buf->state = GLIBTOP_PPP_STATE_HANGUP;
		break;
	case PHASE_ESTABLISH:
	case PHASE_NETWORK:
		buf->state = GLIBTOP_PPP_STATE_ONLINE;
		break;
#endif
	default:
		buf->state = GLIBTOP_PPP_STATE_UNKNOWN;
		break;
	}

	buf->flags = _glibtop_sysdeps_ppp;

#ifdef HAVE_I4B_ACCT
	buf->bytes_in = data.sc_inb;
	buf->bytes_out = data.sc_outb;
	buf->flags |= _glibtop_sysdeps_ppp_acct;
#endif
#endif /* HAVE_I4B */
}
