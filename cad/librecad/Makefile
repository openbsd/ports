# $OpenBSD: Makefile,v 1.2 2020/02/26 16:38:40 rsadowski Exp $

COMMENT =	2D CAD program

GH_ACCOUNT =	LibreCAD
GH_PROJECT =	LibreCAD
GH_TAGNAME =	2.2.0-rc1
PKGNAME =	${DISTNAME:L:S/-rc/rc/}
REVISION =	0

CATEGORIES =	cad graphics

HOMEPAGE =	https://librecad.org

MAINTAINER =	Ingo Feinerer <feinerer@logic.at>

# GPLv2 only
PERMIT_PACKAGE =Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets c freetype m muparser z

MODULES =	devel/qmake \
		x11/qt5
BUILD_DEPENDS =	devel/boost
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	math/muparser \
		x11/qt5/qtsvg

SUBST_VARS =	MODQT_LRELEASE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/postprocess-unix.sh \
		${WRKSRC}/librecad/src/lib/engine/rs_system.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unix/librecad ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/unix/ttf2lff ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/librecad/plugins
	${INSTALL_DATA} ${WRKBUILD}/unix/resources/plugins/* \
		${PREFIX}/share/librecad/plugins
.for dir in fonts patterns qm
	${INSTALL_DATA_DIR} ${PREFIX}/share/librecad/${dir}
	${INSTALL_DATA} ${WRKSRC}/unix/resources/${dir}/* \
		${PREFIX}/share/librecad/${dir}
.endfor
	cp -Rp ${WRKSRC}/unix/resources/library ${PREFIX}/share/librecad/
	${INSTALL_DATA_DIR} ${PREFIX}/share/metainfo
	${INSTALL_DATA} ${WRKSRC}/unix/appdata/librecad.appdata.xml \
		${PREFIX}/share/metainfo
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/librecad.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/librecad/res/main/librecad.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
