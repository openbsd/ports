# $OpenBSD: Makefile,v 1.53 2019/05/04 21:56:18 sthen Exp $

COMMENT=		DHCPv4/IPv4LL/IPv6RS/DHCPv6 quad stack client

DISTNAME=		dhcpcd-7.2.2

CATEGORIES=		net
EXTRACT_SUFX=		.tar.xz

HOMEPAGE=		https://roy.marples.name/projects/dhcpcd

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=		https://roy.marples.name/downloads/dhcpcd/ \
			ftp://roy.marples.name/pub/dhcpcd/

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--mandir='${PREFIX}/man' \
			--localstatedir='${LOCALSTATEDIR}'
FAKE_FLAGS=		SYSCONFDIR=${PREFIX}/share/examples/dhcpcd

.include <bsd.port.mk>
