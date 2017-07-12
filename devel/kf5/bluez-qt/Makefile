# $OpenBSD: Makefile,v 1.4 2017/07/12 00:05:04 zhuk Exp $

COMMENT =		Qt wrapper for BlueZ 5 DBus API
DISTNAME =		bluez-qt-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5BluezQt		2.0

WANTLIB = Qt5Core Qt5DBus Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
