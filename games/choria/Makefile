COMMENT =	2D MMORPG focused on grinding

V =		1.1.1
COMMIT = 	f11082f6
DISTNAME =	choria-${V}-${COMMIT}-src
PKGNAME =	choria-${V}
CATEGORIES =	games x11
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

HOMEPAGE =	https://choria.gitlab.io/


# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += c m pthread SDL2_image sqlite3 ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL2 freetype ogg vorbis vorbisfile
WANTLIB += z openal

COMPILER =		base-clang ports-gcc base-gcc

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

SITES =		https://gitlab.com/jazztickets/uploads/-/raw/main/

MODULES =	devel/cmake

BUILD_DEPENDS =	graphics/glm \
		shells/bash
LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2 \
		devel/sdl2-image \
		databases/sqlite3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/choria-${V}-${COMMIT}

pre-configure:
	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/choria
	
.include <bsd.port.mk>
