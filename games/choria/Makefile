COMMENT =	2D MMORPG focused on grinding

V =		1.1.2
COMMIT = 	17cca1e3
DISTNAME =	choria-${V}-${COMMIT}-src
PKGNAME =	choria-${V}
CATEGORIES =	games x11
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

HOMEPAGE =	https://choria.gitlab.io/


# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += c m pthread sqlite3 ${COMPILER_LIBCXX} webp
WANTLIB += GL GLU SDL3 freetype ogg vorbis vorbisfile
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
		devel/sdl3 \
		databases/sqlite3 \
		graphics/libwebp

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/choria-${V}-${COMMIT}

pre-configure:
	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/choria
	

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
