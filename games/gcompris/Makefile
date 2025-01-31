COMMENT=	educational game for children

V=		25.0
DISTNAME=	gcompris-qt-${V}
PKGNAME=	gcompris-${V}
EPOCH=		0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
# SIL Open Font License (OFL)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Qml Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6QuickControls2 Qt6QuickControls2Basic
WANTLIB += Qt6QuickTemplates2 Qt6Sensors Qt6Svg Qt6WaylandClient
WANTLIB += Qt6Widgets c m wayland-client wayland-cursor xkbcommon

SITES=		http://gcompris.net/download/qt/src/

MODULES=	devel/kf6

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/kf6/kdoctools

LIB_DEPENDS=	x11/qt6/qtcharts \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsensors \
		x11/qt6/qtsvg \
		x11/qt6/qtwayland

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS=	-DQML_BOX2D_MODULE=disabled

post-install:
	cd ${PREFIX}/bin && ln -s gcompris-qt gcompris

.include <bsd.port.mk>
