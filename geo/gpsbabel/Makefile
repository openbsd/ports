USE_WXNEEDED=		Yes

PKG_ARCH-tk=		*

COMMENT-main=		GPS waypoint, track, and route conversion tool
COMMENT-tk=		Tk front-end to gpsbabel
COMMENT-qt=		Qt front-end to gpsbabel

VERSION=		1.10.0
GH_ACCOUNT=		gpsbabel
GH_PROJECT=		gpsbabel
GH_TAGNAME=		gpsbabel_1_10_0
DISTNAME=		gpsbabel-${VERSION}
PKGNAME-main=		gpsbabel-${VERSION}
PKGNAME-tk=		gpsbabel-tk-${VERSION}
PKGNAME-qt=		gpsbabel-qt-${VERSION}

REVISION-tk=		0

CATEGORIES=		geo

HOMEPAGE=		https://www.gpsbabel.org/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB-main += ${COMPILER_LIBCXX} Qt6Core Qt6Core5Compat c m shp usb-1.0

WANTLIB-qt += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB-qt += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB-qt += Qt6QmlWorkerScript Qt6Quick Qt6SerialPort Qt6WebChannel
WANTLIB-qt += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB-qt += c m shp

WANTLIB-tk =

MULTI_PACKAGES=		-main -tk -qt

MODULES=		devel/cmake \
			x11/tk \
			x11/qt6

MODTK_VERSION=		8.6

# gpsbabel (from the -main subpackage) is linked against Qt6Core
LIB_DEPENDS-main=	devel/libusb1 \
			devel/shapelib \
			x11/qt6/qt5compat \
			x11/qt6/qtbase

LIB_DEPENDS-tk=		${MODTK_RUN_DEPENDS}
RUN_DEPENDS-tk=		geo/gpsbabel \

LIB_DEPENDS-qt=		devel/shapelib \
			x11/qt6/qtwebengine

RUN_DEPENDS-qt=		geo/gpsbabel \
			devel/desktop-file-utils

CONFIGURE_ARGS+=	-DGPSBABEL_ENABLE_PCH=OFF

CONFIGURE_ENV+=		CWEB=${WRKSRC}

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib -lshp

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/guibabel
	@perl -pi -e 's/gpsbabelfe-bin/guibabel-qt/' \
		${WRKSRC}/gui/gpsbabel.desktop

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gpsbabel ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/gui/GPSBabelFE/gpsbabelfe \
		${PREFIX}/bin/guibabel-qt
	${INSTALL_SCRIPT} ${WRKSRC}/guibabel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/gui/gpsbabel.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/gui/images/appicon.png \
		${PREFIX}/share/pixmaps/gpsbabel.png

.include <bsd.port.mk>
