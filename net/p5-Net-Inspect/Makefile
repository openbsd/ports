# $OpenBSD: Makefile,v 1.12 2014/07/07 18:34:29 bluhm Exp $

COMMENT =		library for inspection of data on various network layers

DISTNAME =		Net-Inspect-0.304

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

.include <bsd.port.mk>
