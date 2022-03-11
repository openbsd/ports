COMMENT =		volleyball game with online play

GH_ACCOUNT =		danielknobe
GH_PROJECT =		blobbyvolley2
GH_COMMIT =		5a03dd0a47800b590097f7a5dd3cb3dcda1ccd91

DISTNAME =		blobby-1.0.20200209

CATEGORIES =		games

HOMEPAGE =		http://blobbyvolley.de/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} GL GLU SDL2 c m physfs

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		devel/sdl2 \
			devel/physfs

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
