COMMENT =	cross-platform port of Arx Fatalis, a first-person RPG
CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

PKGNAME =	arx-libertatis-${GH_TAGNAME}
GH_ACCOUNT =	arx
GH_PROJECT =	ArxLibertatis
GH_TAGNAME =	1.2

SHARED_LIBS +=	ArxIO                     0.0 # 1.2

# GPLv3+, fonts are SIL OFL 1.1 license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c epoxy freetype m openal z

# C++17
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost \
		devel/cppunit \
		graphics/ImageMagick \
		graphics/glm \
		graphics/inkscape \
		graphics/optipng
LIB_DEPENDS =	audio/openal \
		devel/sdl2
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DBUILD_CRASHHANDLER=OFF \
			-DBUILD_CRASHREPORTER=OFF \
			-DBUILD_IO_LIBRARY=OFF \
			-DBUILD_TESTS=ON \
			-DCMAKE_EXE_LINKER_FLAGS="-lpthread" \
			-DCMAKE_INSTALL_MANDIR=${LOCALBASE}/man \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/arx \
			-DUNITY_BUILD=OFF

PORTHOME =	${WRKDIR}

post-install:
	ln -sf	${TRUEPREFIX}/share/arx/bin/arx ${PREFIX}/bin/arx
	ln -sf	${TRUEPREFIX}/share/arx/bin/arx-install-data \
		${PREFIX}/bin/arx-install-data
	ln -sf	${TRUEPREFIX}/share/arx/bin/arxsavetool \
		${PREFIX}/bin/arxsavetool
	ln -sf	${TRUEPREFIX}/share/arx/bin/arxunpak \
		${PREFIX}/bin/arxunpak

.include <bsd.port.mk>
