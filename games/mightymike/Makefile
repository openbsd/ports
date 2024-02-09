COMMENT =	family-friendly action game in a toy store

V =		3.0.2
PKGNAME =	mightymike-${V}
DIST_TUPLE +=	github jorio MightyMike v${V} .
DIST_TUPLE +=	github jorio Pomme d57c28e205462e51063e787f9ebddaadff592f1e \
		extern/Pomme

CATEGORIES =	games

HOMEPAGE =	https://pangeasoft.net/mightymike

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# game: CC BY-NC-SA 4.0; extern/Pomme: MIT, LGPLv2.1, BSD, Boost
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} GL SDL2 c m

# C++20
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CFLAGS +=	-I${X11BASE}/include
CXXFLAGS +=	-I${X11BASE}/include

CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Main.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/MightyMike/
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/MightyMike/
	${INSTALL_PROGRAM} ${WRKBUILD}/MightyMike ${PREFIX}/bin/
	cp -R ${WRKBUILD}/Data ${PREFIX}/share/mightymike
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/512x512/apps/ \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/packaging/mightymike-desktopicon.png \
		${PREFIX}/share/icons/hicolor/512x512/apps/
	${INSTALL_DATA} ${WRKSRC}/packaging/mightymike.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
