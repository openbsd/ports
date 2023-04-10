QT6NAME =	QtSerialBus
COMMENT =	Qt6 API for accessing serial bus devices
PKGSPEC =	qt6-qtserialbus-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6SerialBus              1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6SerialPort
WANTLIB += c m

LIB_DEPENDS =	x11/qt6/qtserialport

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
