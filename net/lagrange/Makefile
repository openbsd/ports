COMMENT =	SDL multi protocol navigator
VERSION =	1.15.2

DISTNAME =	lagrange-${VERSION}

CATEGORIES =	net x11

MAINTAINER =	Florian Viehweger <openbsd@out-of-creativity.de>

HOMEPAGE =	https://gmi.skyjake.fi/lagrange/

# BSD 2-Clause
PERMIT_PACKAGE =Yes

WANTLIB +=	ICE SDL2 SM X11 Xext mpg123 pcre2-8 unistring
WANTLIB +=	c crypto m fribidi harfbuzz ssl z pthread webp

DEBUG_PACKAGES =${BUILD_PACKAGES}

MASTER_SITES =	https://git.skyjake.fi/skyjake/lagrange/releases/download/v${VERSION}/

COMPILER =	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/mpg123 \
		converters/libunistring \
		devel/fribidi \
		devel/harfbuzz \
		devel/pcre2 \
		devel/sdl2 \
		graphics/libwebp

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE

# Don't enable SSE4.1, it fails at runtime on old amd64 machines and i386
CONFIGURE_ARGS +=	-DTFDN_ENABLE_SSE41=No

NO_TEST =	Yes

.include <bsd.port.mk>
