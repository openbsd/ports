# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:53 naddy Exp $

COMMENT =		library for inspection of data on various network layers

DISTNAME =		Net-Inspect-0.325

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

.include <bsd.port.mk>
