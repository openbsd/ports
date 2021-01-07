# $OpenBSD: Makefile,v 1.7 2021/01/07 22:29:58 cwen Exp $

COMMENT =	SDL multi protocol navigator
VERSION =	1.0.2
REVISION =	0

DISTNAME =	lagrange-${VERSION}

CATEGORIES =	net x11

MAINTAINER =	Solene Rapenne <solene@perso.pw>

HOMEPAGE =	https://gmi.skyjake.fi/lagrange/

# BSD 2-Clause
PERMIT_PACKAGE =Yes

WANTLIB +=	SDL2 mpg123 pcre unistring
WANTLIB +=	c crypto m ssl z pthread

MASTER_SITES =	https://git.skyjake.fi/skyjake/lagrange/releases/download/v${VERSION}/

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/mpg123 \
		converters/libunistring \
		devel/pcre \
		devel/sdl2

# Don't enable SSE4.1, it fails at runtime on old amd64 machines and i386
CONFIGURE_ARGS +=	-DTFDN_ENABLE_SSE41=No

NO_TEST =	Yes

.include <bsd.port.mk>
