# "#error Unknown endianess!" in src/openrct2/common.h
NOT_FOR_ARCHS =	${BE_ARCHS}

V =		0.3.1
COMMENT =	open source re-implementation of RollerCoaster Tycoon 2
DISTNAME =	openrct2-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://openrct2.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 c crypto curl duktape fontconfig
WANTLIB += freetype icuuc m png speexdsp ssl z zip

# Upstream does not make proper source releases.
# See: https://github.com/OpenRCT2/OpenRCT2/issues/5887
MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/libzip \
		audio/speexdsp \
		devel/sdl2 \
		graphics/png \
		lang/duktape \
		net/curl \
		textproc/icu4c

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DDOWNLOAD_OBJECTS=OFF \
			-DDOWNLOAD_REPLAYS=OFF \
			-DDOWNLOAD_TITLE_SEQUENCES=OFF \
			-DOPENRCT2_BRANCH=master \
			-DOPENRCT2_COMMIT_SHA1_SHORT="d01dcea"

# Downloads things. See: https://github.com/OpenRCT2/OpenRCT2/issues/5710
NO_TEST =	Yes

# Work around some upstream lack of inclusion of needed includes
post-extract:
	mkdir -p ${WRKSRC}/nlohmann
	mv ${WRKSRC}/json.hpp ${WRKSRC}/nlohmann

pre-configure:
	sed -i 's,/usr/local,${TRUEPREFIX},g' \
		${WRKSRC}/src/openrct2/platform/Platform.Linux.cpp

# Upstream misnamed this
post-install:
	mv ${PREFIX}/share/openrct2/objects ${PREFIX}/share/openrct2/object

.include <bsd.port.mk>
