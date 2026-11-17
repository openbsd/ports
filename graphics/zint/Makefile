COMMENT-main =		library for encoding data in several barcode variants
COMMENT-x11 = 		graphical interface for the zint barcode generator

V = 			2.16.0
DISTNAME =		zint-${V}-src
PKGNAME-main = 		zint-${V}
PKGNAME-x11 = 		zint-gui-${V}
REVISION-x11 =          0

SHARED_LIBS += 		zint	8.0

CATEGORIES =		graphics

HOMEPAGE = 		https://www.zint.org.uk/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

cWANTLIB = c m png z
WANTLIB-main = ${cWANTLIB}
WANTLIB-x11 += ${cWANTLIB} ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6OpenGL
WANTLIB-x11 += Qt6UiTools Qt6OpenGLWidgets Qt6Svg Qt6Widgets zint

SITES =			${SITE_SOURCEFORGE:=zint/}

MODULES =		devel/cmake
CONFIGURE_ARGS += 	-DDATA_INSTALL_DIR=OFF \
			-DZINT_QT6=ON \
			-DMAN_INSTALL_DIR=${PREFIX}/man

LIB_DEPENDS-main = 	graphics/png

MULTI_PACKAGES = 	-main

PSEUDO_FLAVORS = 	no_x11
FLAVOR ?=

TEST_DEPENDS = 	${BASE_PKGPATH},-main

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES +=       -x11
MODULES +=		x11/qt6
LIB_DEPENDS-x11 += 	${BASE_PKGPATH},-main \
			x11/qt6/qtsvg \
			x11/qt6/qttools \
			${MODQT6_LIB_DEPENDS}
RUN_DEPENDS-x11 += 	devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/zint-qt.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/zint-qt.png ${PREFIX}/share/pixmaps/
.endif

do-test:
	cd ${WRKSRC}/frontend/ && /bin/sh ./test.sh

.include <bsd.port.mk>
