# $OpenBSD: Makefile,v 1.24 2017/05/26 21:46:17 bluhm Exp $

COMMENT =	library for inspection of data on various network layers

DISTNAME =	Net-Inspect-0.327

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

PKG_ARCH =		*

.include <bsd.port.mk>
