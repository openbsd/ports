# $OpenBSD: Makefile,v 1.26 2017/11/23 14:39:54 bluhm Exp $

COMMENT =	library for inspection of data on various network layers

DISTNAME =	Net-Inspect-0.329

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

PKG_ARCH =		*

.include <bsd.port.mk>
