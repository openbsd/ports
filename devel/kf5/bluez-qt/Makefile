# $OpenBSD: Makefile,v 1.10 2019/03/08 20:00:42 cwen Exp $

COMMENT =		Qt wrapper for BlueZ 5 DBus API
DISTNAME =		bluez-qt-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5BluezQt		4.2

WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
