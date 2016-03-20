# $OpenBSD: Makefile,v 1.7 2016/03/20 19:57:22 naddy Exp $

COMMENT =		fetch and parse the directory index from a web server

DISTNAME =		WWW-IndexParser-0.91
REVISION =		0
CATEGORIES =		www

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		www/p5-libwww
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
