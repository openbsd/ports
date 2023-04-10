QT6NAME =	QtLottie
COMMENT =	QML API for rendering graphics and animations
PKGSPEC =	qt6-qtlottie-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Bodymovin              1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
