COMMENT=	educational game for children

V=		4.1
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

WANTLIB += ${COMPILER_LIBCXX} Qt5Charts Qt5Core Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5QmlWorkerScript Qt5Quick
WANTLIB += Qt5QuickControls2 Qt5QuickParticles Qt5QuickTemplates2
WANTLIB += Qt5Sensors Qt5Svg Qt5Widgets c m

SITES=		http://gcompris.net/download/qt/src/

MODULES=	devel/kf5

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/kf5/kdoctools

LIB_DEPENDS=	x11/qt5/qtcharts \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtsensors \
		x11/qt5/qtsvg

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic \
		x11/qt5/qtgraphicaleffects

CONFIGURE_ARGS=	-DQML_BOX2D_MODULE=disabled

post-install:
	cd ${PREFIX}/bin && ln -s gcompris-qt gcompris

.include <bsd.port.mk>
