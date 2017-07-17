# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =	QtConnectivity
COMMENT-main =	Bluetooth and NFC support for Qt5

SHARED_LIBS =	Qt5Bluetooth		2.1
SHARED_LIBS +=	Qt5Nfc			2.1

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =	${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB +=	Qt5Quick m pthread

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =	x11/dbus

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
