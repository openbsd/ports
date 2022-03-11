COMMENT-main =		library for encoding data in several barcode variants
COMMENT-x11 = 		graphical interface for the zint barcode generator

V = 			2.10.0
DISTNAME =		zint-${V}-src
PKGNAME-main = 		zint-${V}
PKGNAME-x11 = 		zint-gui-${V}

SHARED_LIBS += 		zint	4.1 # 2.9

CATEGORIES =		graphics

HOMEPAGE = 		http://www.zint.org.uk/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

cWANTLIB = c m png z
WANTLIB-main = ${cWANTLIB}
WANTLIB-x11 += ${cWANTLIB} GL Qt5Core Qt5Gui Qt5Widgets Qt5Xml zint pthread
WANTLIB-x11 += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zint/}

MODULES =		devel/cmake
CONFIGURE_ARGS += 	-DDATA_INSTALL_DIR=OFF

LIB_DEPENDS-main = 		graphics/png

MULTI_PACKAGES = 	-main

PSEUDO_FLAVORS = 	no_x11
FLAVOR ?=

TEST_DEPENDS = 	${BASE_PKGPATH},-main

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES +=       -x11
MODULES +=		x11/qt5
LIB_DEPENDS-x11 += 	${BASE_PKGPATH},-main \
			${MODQT5_LIB_DEPENDS}
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
