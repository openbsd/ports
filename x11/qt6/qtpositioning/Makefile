QT6NAME =	QtPositioning
COMMENT =	Qt Positioning API
PKGSPEC =	qt6-qtpositioning-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Positioning            0.1 # 0.0
SHARED_LIBS +=  Qt6PositioningQuick       1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6SerialPort
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtserialport

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
