QT6NAME =	QtSensors
COMMENT =	Qt6 hardware sensors support
PKGSPEC =	qt6-qtsensors-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Sensors                0.0 # 0.0
SHARED_LIBS +=  Qt6SensorsQuick           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
