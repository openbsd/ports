# $OpenBSD: Makefile,v 1.2 2012/10/03 19:34:32 bluhm Exp $

COMMENT =		library for inspection of data on various network layers

DISTNAME =		Net-Inspect-0.19

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Net-Pcap \
			www/p5-libwww

.include <bsd.port.mk>
