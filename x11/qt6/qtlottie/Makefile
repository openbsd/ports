QT6NAME =	QtLottie
COMMENT =	QML API for rendering graphics and animations
PKGSPEC =	qt6-qtlottie-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Bodymovin              2.0 # 6.6
SHARED_LIBS +=	Qt6Lottie                 0.0 # 0.0
SHARED_LIBS +=	Qt6LottieVectorImageGenerator 0.0 # 0.0
SHARED_LIBS +=	Qt6LottieVectorImageHelpers 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickShapes Qt6QuickVectorImageGenerator c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
