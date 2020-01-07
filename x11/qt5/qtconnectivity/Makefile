# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:07 zhuk Exp $

QT5NAME =	QtConnectivity
COMMENT-main =	Bluetooth and NFC support for Qt5
REVISION-main =	0

SHARED_LIBS =	Qt5Bluetooth		2.2
SHARED_LIBS +=	Qt5Nfc			2.2

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick m

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =	x11/dbus

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
