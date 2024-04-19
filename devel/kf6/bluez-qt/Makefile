UNLINKED = kf6
COMMENT =	Qt wrapper for BlueZ 5 DBus API
DISTNAME =	bluez-qt-${VERSION}

SHARED_LIBS +=  KF6BluezQt                0.0 # 0.0

LIB_DEPENDS =	x11/qt6/qtdeclarative

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6DBus Qt6Network Qt6Qml
WANTLIB += m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
