# $OpenBSD: Makefile,v 1.1.1.1 2020/12/12 14:22:17 solene Exp $

COMMENT =	SDL multi protocol navigator
VERSION =	0.12.1

DISTNAME =	lagrange-${VERSION}

CATEGORIES =	net x11

MAINTAINER =	Solene Rapenne <solene@perso.pw>

HOMEPAGE =	https://gmi.skyjake.fi/lagrange/

# BSD 2-Clause
PERMIT_PACKAGE =Yes

WANTLIB +=	SDL2 mpg123 pcre unistring
WANTLIB +=	c crypto m ssl z pthread

MASTER_SITES =	https://git.skyjake.fi/skyjake/lagrange/releases/download/v${VERSION}/

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/mpg123 \
		converters/libunistring \
		devel/pcre \
		devel/sdl2

NO_TEST =	Yes

.include <bsd.port.mk>
