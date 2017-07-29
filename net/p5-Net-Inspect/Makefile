# $OpenBSD: Makefile,v 1.25 2017/07/29 19:19:37 bluhm Exp $

COMMENT =	library for inspection of data on various network layers

DISTNAME =	Net-Inspect-0.328

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

PKG_ARCH =		*

.include <bsd.port.mk>
