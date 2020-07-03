# $OpenBSD: Makefile,v 1.29 2020/07/03 21:45:34 sthen Exp $

COMMENT =	library for inspection of data on various network layers

DISTNAME =	Net-Inspect-0.330
REVISION =	0

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

PKG_ARCH =		*

.include <bsd.port.mk>
