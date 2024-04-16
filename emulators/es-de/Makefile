COMMENT =	emulator frontend

PKGNAME =	es-de-$V
V =		3.0.1
REV =		a47a0547a2248d1f7c9f6c27b19b5013bed3f23e

DIST_TUPLE +=	gitlab es-de emulationstation-de v$V .

CATEGORIES =	emulators

HOMEPAGE =	https://es-de.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL2 avcodec avfilter avformat avutil c curl
WANTLIB += freeimage freetype git2 m poppler-cpp pugixml

# c++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		graphics/glm
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		devel/libgit2/libgit2 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/freeimage \
			net/curl \
			print/poppler,-main \
			textproc/pugixml

DEBUG_PACKAGES = ${BUILD_PACKAGES}

WRKDIST =		${WRKDIR}/emulationstation-de-v$V-${REV}

post-install:
	gunzip ${PREFIX}/man/man6/es-de.6.gz

.include <bsd.port.mk>
