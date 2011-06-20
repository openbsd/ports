/* $OpenBSD: netload.c,v 1.5 2011/06/20 11:48:39 jasper Exp $	*/

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
#include <glibtop/netload.h>

#include <glibtop_suid.h>

#include <string.h>

#include <net/if.h>
#include <net/if_dl.h>
#include <net/if_types.h>

#include <sys/ioctl.h>

#ifdef HAVE_NET_IF_VAR_H
#include <net/if_var.h>
#endif

#include <netinet/in.h>
#include <netinet/in_var.h>

static const unsigned long _glibtop_sysdeps_netload =
(1L << GLIBTOP_NETLOAD_IF_FLAGS) +
(1L << GLIBTOP_NETLOAD_PACKETS_IN) +
(1L << GLIBTOP_NETLOAD_PACKETS_OUT) +
(1L << GLIBTOP_NETLOAD_PACKETS_TOTAL) +
(1L << GLIBTOP_NETLOAD_BYTES_IN) +
(1L << GLIBTOP_NETLOAD_BYTES_OUT) +
(1L << GLIBTOP_NETLOAD_BYTES_TOTAL) +
(1L << GLIBTOP_NETLOAD_ERRORS_IN) +
(1L << GLIBTOP_NETLOAD_ERRORS_OUT) +
(1L << GLIBTOP_NETLOAD_ERRORS_TOTAL) +
(1L << GLIBTOP_NETLOAD_COLLISIONS);

static const unsigned _glibtop_sysdeps_netload_data =
(1L << GLIBTOP_NETLOAD_ADDRESS) +
(1L << GLIBTOP_NETLOAD_SUBNET) +
(1L << GLIBTOP_NETLOAD_MTU);

/* nlist structure for kernel access */
static struct nlist nlst [] = {
    { "_ifnet" },
    { 0 }
};

/* Init function. */

void
_glibtop_init_netload_p (glibtop *server)
{
    server->sysdeps.netload = _glibtop_sysdeps_netload;

    if (kvm_nlist (server->machine.kd, nlst) < 0)
	glibtop_error_io_r (server, "kvm_nlist");
}

/* Provides Network statistics. */

void
glibtop_get_netload_p (glibtop *server, glibtop_netload *buf,
		       const char *interface)
{
    struct ifnet ifnet;
    u_long ifnetaddr, ifnetfound;
    struct sockaddr *sa = NULL;
    char name [32];

    union {
	struct ifaddr ifa;
	struct in_ifaddr in;
    } ifaddr;

    glibtop_init_p (server, (1L << GLIBTOP_SYSDEPS_NETLOAD), 0);

    memset (buf, 0, sizeof (glibtop_netload));

    if (kvm_read (server->machine.kd, nlst [0].n_value,
		  &ifnetaddr, sizeof (ifnetaddr)) != sizeof (ifnetaddr))
	glibtop_error_io_r (server, "kvm_read (ifnet)");

    while (ifnetaddr) {
	struct sockaddr_in *sin;
	register char *cp;
	u_long ifaddraddr;

	{
	    ifnetfound = ifnetaddr;

	    if (kvm_read (server->machine.kd, ifnetaddr, &ifnet,
			  sizeof (ifnet)) != sizeof (ifnet))
		    glibtop_error_io_r (server, "kvm_read (ifnetaddr)");

	    g_strlcpy (name, ifnet.if_xname, sizeof(name));
	    ifnetaddr = (u_long) ifnet.if_list.tqe_next;

	    if (strcmp (name, interface) != 0)
		    continue;

	    ifaddraddr = (u_long) ifnet.if_addrlist.tqh_first;
	}
	if (ifnet.if_flags & IFF_UP)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_UP);
	if (ifnet.if_flags & IFF_BROADCAST)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_BROADCAST);
	if (ifnet.if_flags & IFF_DEBUG)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_DEBUG);
	if (ifnet.if_flags & IFF_LOOPBACK)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_LOOPBACK);
	if (ifnet.if_flags & IFF_POINTOPOINT)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_POINTOPOINT);
#ifdef IFF_DRV_RUNNING
	if (ifnet.if_drv_flags & IFF_DRV_RUNNING)
#else
	if (ifnet.if_flags & IFF_RUNNING)
#endif
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_RUNNING);
	if (ifnet.if_flags & IFF_NOARP)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_NOARP);
	if (ifnet.if_flags & IFF_PROMISC)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_PROMISC);
	if (ifnet.if_flags & IFF_ALLMULTI)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_ALLMULTI);
#ifdef IFF_DRV_OACTIVE
	if (ifnet.if_drv_flags & IFF_DRV_OACTIVE)
#else
	if (ifnet.if_flags & IFF_OACTIVE)
#endif
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_OACTIVE);
	if (ifnet.if_flags & IFF_SIMPLEX)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_SIMPLEX);
	if (ifnet.if_flags & IFF_LINK0)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_LINK0);
	if (ifnet.if_flags & IFF_LINK1)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_LINK1);
	if (ifnet.if_flags & IFF_LINK2)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_LINK2);
	if (ifnet.if_flags & IFF_MULTICAST)
		buf->if_flags |= (1L << GLIBTOP_IF_FLAGS_MULTICAST);

	buf->packets_in = ifnet.if_ipackets;
	buf->packets_out = ifnet.if_opackets;
	buf->packets_total = buf->packets_in + buf->packets_out;

	buf->bytes_in = ifnet.if_ibytes;
	buf->bytes_out = ifnet.if_obytes;
	buf->bytes_total = buf->bytes_in + buf->bytes_out;

	buf->errors_in = ifnet.if_ierrors;
	buf->errors_out = ifnet.if_oerrors;
	buf->errors_total = buf->errors_in + buf->errors_out;

	buf->collisions = ifnet.if_collisions;
	buf->flags = _glibtop_sysdeps_netload;

	while (ifaddraddr) {
	    if ((kvm_read (server->machine.kd, ifaddraddr, &ifaddr,
			   sizeof (ifaddr)) != sizeof (ifaddr)))
		glibtop_error_io_r (server, "kvm_read (ifaddraddr)");

#define CP(x) ((char *)(x))
	    cp = (CP(ifaddr.ifa.ifa_addr) - CP(ifaddraddr)) +
		CP(&ifaddr);
	    sa = (struct sockaddr *)cp;

	    if (sa->sa_family == AF_LINK) {
		struct sockaddr_dl *dl = (struct sockaddr_dl *) sa;

		memcpy (buf->hwaddress, LLADDR (dl), sizeof (buf->hwaddress));
		buf->flags |= (1L << GLIBTOP_NETLOAD_HWADDRESS);
	    } else if (sa->sa_family == AF_INET) {
		sin = (struct sockaddr_in *)sa;
		buf->subnet = ifaddr.in.ia_netmask;
		buf->address = sin->sin_addr.s_addr;
		buf->mtu = ifnet.if_mtu;

		buf->flags |= _glibtop_sysdeps_netload_data;
	    } else if (sa->sa_family == AF_INET6) {
		struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *) sa;
		int in6fd;

		memcpy (buf->address6, &sin6->sin6_addr,
		    sizeof (buf->address6));
		buf->flags |= (1L << GLIBTOP_NETLOAD_ADDRESS6);

		if (IN6_IS_ADDR_LINKLOCAL(&sin6->sin6_addr)) {
			sin6->sin6_scope_id =
				ntohs(*(u_int16_t *)&sin6->sin6_addr.s6_addr[2]);
			sin6->sin6_addr.s6_addr[2] = sin6->sin6_addr.s6_addr[3] = 0;
		}

		buf->scope6 = (guint8) sin6->sin6_scope_id;
		buf->flags |= (1L << GLIBTOP_NETLOAD_SCOPE6);

		in6fd = socket (AF_INET6, SOCK_DGRAM, 0);
		if (in6fd >= 0) {
			struct in6_ifreq ifr;

			memset (&ifr, 0, sizeof (ifr));
			ifr.ifr_addr = *sin6;
			g_strlcpy (ifr.ifr_name, interface,
			    sizeof (ifr.ifr_name));
			if (ioctl (in6fd, SIOCGIFNETMASK_IN6, (char *) &ifr) >= 0) {
				memcpy (buf->prefix6, &ifr.ifr_addr.sin6_addr,
				    sizeof (buf->prefix6));
				buf->flags |= (1L << GLIBTOP_NETLOAD_PREFIX6);
			}
			close (in6fd);
		}
	    }
	    ifaddraddr = (u_long) ifaddr.ifa.ifa_list.tqe_next;
	}
	return;
    }
}
