QT6NAME =	QtSensors
COMMENT =	Qt6 hardware sensors support
PKGSPEC =	qt6-qtsensors-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Sensors                2.0 # 6.7
SHARED_LIBS +=  Qt6SensorsQuick           1.1 # 6.7

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
