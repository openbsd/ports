# $OpenBSD: Makefile,v 1.2 2015/06/23 07:44:31 bentley Exp $

COMMENT=		DHCPv4/IPv4LL/IPv6RS/DHCPv6 quad stack client
DISTNAME=		dhcpcd-6.4.2
CATEGORIES=		net
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://roy.marples.name/projects/dhcpcd/

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://roy.marples.name/downloads/dhcpcd/ \
			ftp://roy.marples.name/pub/dhcpcd/

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--mandir='${PREFIX}/man' \
			--localstatedir='${LOCALSTATEDIR}'
FAKE_FLAGS=		SYSCONFDIR=${PREFIX}/share/examples/dhcpcd

.include <bsd.port.mk>
