# $OpenBSD: Makefile,v 1.76 2020/06/18 10:26:26 sthen Exp $

COMMENT=	DHCPv4/IPv4LL/IPv6RS/DHCPv6 quad stack client

DISTNAME=	dhcpcd-9.1.2

CATEGORIES=	net
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://roy.marples.name/projects/dhcpcd

# BSD-2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=	https://roy.marples.name/downloads/dhcpcd/ \
		ftp://roy.marples.name/pub/dhcpcd/

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--enable-privsep \
		--privsepuser=_dhcpcd \
		--prefix='${PREFIX}' \
		--sysconfdir='${SYSCONFDIR}' \
		--mandir='${PREFIX}/man' \
		--localstatedir='${LOCALSTATEDIR}'
FAKE_FLAGS=	SYSCONFDIR=${PREFIX}/share/examples/dhcpcd

.include <bsd.port.mk>
