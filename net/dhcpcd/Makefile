# $OpenBSD: Makefile,v 1.18 2016/07/30 21:06:31 sthen Exp $

COMMENT=		DHCPv4/IPv4LL/IPv6RS/DHCPv6 quad stack client
DISTNAME=		dhcpcd-6.11.2
CATEGORIES=		net
EXTRACT_SUFX=		.tar.xz

HOMEPAGE=		http://roy.marples.name/projects/dhcpcd/

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=		http://roy.marples.name/downloads/dhcpcd/ \
			ftp://roy.marples.name/pub/dhcpcd/

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--mandir='${PREFIX}/man' \
			--localstatedir='${LOCALSTATEDIR}'
FAKE_FLAGS=		SYSCONFDIR=${PREFIX}/share/examples/dhcpcd

.include <bsd.port.mk>
