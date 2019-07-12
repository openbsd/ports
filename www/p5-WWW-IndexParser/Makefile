# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:58 sthen Exp $

COMMENT =		fetch and parse the directory index from a web server

DISTNAME =		WWW-IndexParser-0.91
REVISION =		0
CATEGORIES =		www

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		www/p5-libwww
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
