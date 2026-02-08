COMMENT=	educational game for children

V=		26.0
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

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Graphs Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender Qt6Quick3DUtils
WANTLIB += Qt6QuickControls2 Qt6QuickControls2Basic Qt6QuickTemplates2
WANTLIB += Qt6Sensors Qt6ShaderTools Qt6Svg Qt6WaylandClient c
WANTLIB += m wayland-client wayland-cursor

SITES=		http://gcompris.net/download/qt/src/

MODULES=	devel/kf6

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/kf6/kdoctools \
		x11/qt6/qtcharts

LIB_DEPENDS=	x11/qt6/qtdeclarative \
		x11/qt6/qtgraphs \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsensors \
		x11/qt6/qtsvg

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS=	-DQML_BOX2D_MODULE=disabled

# EVP_DecryptInit_ex2, EVP_CIPHER_fetch
BUILD_DEPENDS +=	security/openssl/3.5>=3.5.5p0
CXXFLAGS +=		-I${LOCALBASE}/include/eopenssl35
CONFIGURE_ENV +=	OpenSSL_DIR=${LOCALBASE}/lib/eopenssl35/cmake/OpenSSL/

post-install:
	cd ${PREFIX}/bin && ln -s gcompris-qt gcompris

.include <bsd.port.mk>
