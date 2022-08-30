QT6NAME =		QtSerialBus
COMMENT =		Qt6 API for accessing serial bus devices

SHARED_LIBS +=  Qt6SerialBus              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6SerialPort
WANTLIB += c m

LIB_DEPENDS =		x11/qt6/qtserialport

BUILD_DEPENDS =		graphics/vulkan-loader

.include <bsd.port.mk>
