COMMENT =	QtQuick based components set
DISTNAME =	kirigami-${VERSION}

SHARED_LIBS +=  Kirigami                  0.0 # 0.0
SHARED_LIBS +=  KirigamiDelegates         0.0 # 0.0
SHARED_LIBS +=  KirigamiPlatform          0.0 # 0.0
SHARED_LIBS +=  KirigamiDialogs           0.0 # 0.0
SHARED_LIBS +=  KirigamiLayouts           0.0 # 0.0
SHARED_LIBS +=  KirigamiPrimitives        0.0 # 0.0
SHARED_LIBS +=	KirigamiPrivate           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6QuickControls2 m xkbcommon

BUILD_DEPENDS =	archivers/gtar \
		devel/gettext,-tools \
		x11/qt6/qtshadertools \
		x11/qt6/qtsvg

RUN_DEPENDS =	devel/kf6/breeze-icons>=${MODKF6_VERSION} \
		x11/qt6/qtshadertools \
		x11/qt6/qtsvg

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
