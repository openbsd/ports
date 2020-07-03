# $OpenBSD: Makefile,v 1.9 2020/07/03 21:46:06 sthen Exp $

COMMENT =		fetch and parse the directory index from a web server

DISTNAME =		WWW-IndexParser-0.91
REVISION =		1
CATEGORIES =		www

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		www/p5-libwww
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
