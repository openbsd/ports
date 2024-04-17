COMMENT =		volleyball game with online play

V =			1.1.1

GH_ACCOUNT =		danielknobe
GH_PROJECT =		blobbyvolley2
GH_TAGNAME =		v$V

PKGNAME =		blobby-$V

CATEGORIES =		games

HOMEPAGE =		https://blobbyvolley.de/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} GL GLU SDL2 c m physfs tinyxml2

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		devel/sdl2 \
			devel/physfs \
			textproc/tinyxml2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
