# $OpenBSD: Makefile,v 1.6 2015/01/21 14:43:33 sthen Exp $

COMMENT =		fetch and parse the directory index from a web server

DISTNAME =		WWW-IndexParser-0.91
REVISION =		0
CATEGORIES =		www

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-libwww
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
