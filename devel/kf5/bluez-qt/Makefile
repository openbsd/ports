# $OpenBSD: Makefile,v 1.11 2019/03/30 09:08:42 rsadowski Exp $

COMMENT =		Qt wrapper for BlueZ 5 DBus API
DISTNAME =		bluez-qt-${VERSION}

SHARED_LIBS =		KF5BluezQt		4.3

WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
