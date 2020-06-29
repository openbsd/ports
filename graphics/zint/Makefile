# $OpenBSD: Makefile,v 1.18 2020/06/29 05:48:00 kirby Exp $

COMMENT-main =		library for encoding data in several barcode variants
COMMENT-x11 = 		graphical interface for the zint barcode generator

V = 			2.8.0
DISTNAME =		zint-${V}
PKGNAME-main = 		zint-${V}
PKGNAME-x11 = 		zint-gui-${V}

SHARED_LIBS += 		QZint	3.0 # 2.8
SHARED_LIBS += 		zint	3.0 # 2.8

CATEGORIES =		graphics

HOMEPAGE = 		http://www.zint.org.uk/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

cWANTLIB = c m png z
WANTLIB-main = ${cWANTLIB}
WANTLIB-x11 += ${cWANTLIB} Qt5Core Qt5Gui Qt5Widgets zint pthread
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
	${INSTALL_DATA} ${WRKSRC}/zint.png ${PREFIX}/share/pixmaps/
.endif

do-test:
	cd ${WRKSRC}/frontend/ && /bin/sh ./test.sh

.include <bsd.port.mk>
