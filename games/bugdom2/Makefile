COMMENT =	sequel to the family-friendly 3D action adventure

V =		4.0.0
PKGNAME =	bugdom2-${V}
DIST_TUPLE +=	github jorio Bugdom2 v${V} .
DIST_TUPLE +=	github jorio Pomme c6a38eab19a11847024a13f9b3e2af0c2d908c3e \
		extern/Pomme

CATEGORIES =	games

HOMEPAGE =	https://pangeasoft.net/bug2

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

NO_TEST =	Yes

CFLAGS +=	-I${X11BASE}/include
CXXFLAGS +=	-I${X11BASE}/include

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/Boot.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Bugdom2/
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/Bugdom2/
	${INSTALL_PROGRAM} ${WRKBUILD}/Bugdom2 ${PREFIX}/bin/
	cp -R ${WRKBUILD}/Data ${PREFIX}/share/bugdom2
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/512x512/apps/ \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/packaging/io.jor.bugdom2.png \
		${PREFIX}/share/icons/hicolor/512x512/apps/
	${INSTALL_DATA} ${WRKSRC}/packaging/io.jor.bugdom2.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
