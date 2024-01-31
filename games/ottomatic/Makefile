COMMENT =         family-friendly 3D third person sci-fi action arcade

V =               4.0.1
PKGNAME =         ottomatic-${V}
DIST_TUPLE +=     github jorio OttoMatic ${V} .
DIST_TUPLE +=     github jorio Pomme ef94150e2dcec522e3099f4d03a4e8f2639f7232 \
                  extern/Pomme

CATEGORIES =      games

HOMEPAGE =        https://pangeasoft.net/otto

MAINTAINER =      izzy Meyer <izder456@disroot.org>

# game: CC BY-NC-SA 4.0; extern/Pomme: MIT, LGPLv2.1, BSD, Boost
PERMIT_PACKAGE =  Yes

WANTLIB +=        ${COMPILER_LIBCXX} GL SDL2 c m

# C++20
COMPILER =        base-clang ports-gcc

MODULES =         devel/cmake

BUILD_DEPENDS =   audio/libsamplerate
LIB_DEPENDS =     devel/sdl2
RUN_DEPENDS =     audio/libsamplerate \
                  devel/desktop-file-utils \
                  x11/gtk+4,-guic

NO_TEST =         Yes

CFLAGS +=         -I${X11BASE}/include
CXXFLAGS +=       -I${X11BASE}/include

CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE=Release \
                  -DCMAKE_INSTALL_PREFIX=${LOCALBASE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Main.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/OttoMatic/
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/OttoMatic/
	${INSTALL_PROGRAM} ${WRKBUILD}/OttoMatic ${PREFIX}/bin/
	cp -R ${WRKBUILD}/Data ${PREFIX}/share/ottomatic
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/512x512/apps/ \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/packaging/io.jor.ottomatic.png \
		${PREFIX}/share/icons/hicolor/512x512/apps/
	${INSTALL_DATA} ${WRKSRC}/packaging/io.jor.ottomatic.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
