QT6NAME =	QtSerialBus
COMMENT =	Qt6 API for accessing serial bus devices
PKGSPEC =	qt6-qtserialbus-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6SerialBus              2.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6SerialPort
WANTLIB += c m

LIB_DEPENDS =	x11/qt6/qtserialport

.include <bsd.port.mk>
