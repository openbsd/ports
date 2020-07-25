# $OpenBSD: Makefile,v 1.76 2020/07/25 11:15:45 ajacoutot Exp $

COMMENT=	educational game for children

V=		0.97.1
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

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Sensors Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += Qt5XmlPatterns c m

MASTER_SITES=	http://gcompris.net/download/qt/src/

MODULES=	devel/cmake \
		x11/qt5

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/kf5/extra-cmake-modules \
		devel/kf5/kdoctools

LIB_DEPENDS=	x11/qt5/qtmultimedia \
		x11/qt5/qtxmlpatterns \
		x11/qt5/qtsensors \
		x11/qt5/qtsvg

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols

CONFIGURE_ARGS=	-DQML_BOX2D_MODULE=disabled

post-install:
	cd ${PREFIX}/bin && ln -s gcompris-qt gcompris

.include <bsd.port.mk>
