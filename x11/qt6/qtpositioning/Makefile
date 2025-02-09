QT6NAME =	QtPositioning
COMMENT =	Qt Positioning API
PKGSPEC =	qt6-qtpositioning-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Positioning            2.0 # 6.7
SHARED_LIBS +=  Qt6PositioningQuick       3.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6SerialPort c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtserialport \
		x11/xkbcommon

.include <bsd.port.mk>
