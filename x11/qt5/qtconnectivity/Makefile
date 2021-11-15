# $OpenBSD: Makefile,v 1.12 2021/11/15 21:23:31 rsadowski Exp $

QT5NAME =	QtConnectivity
COMMENT-main =	Bluetooth and NFC support for Qt5

REVISION-main =		0
REVISION-examples =	0

SHARED_LIBS +=  Qt5Bluetooth          3.0 # 5.9
SHARED_LIBS +=  Qt5Nfc                3.0 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5QmlModels Qt5Qml Qt5Quick m

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =	x11/dbus

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
