# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:23 zhuk Exp $

QT5NAME =	QtConnectivity
COMMENT-main =	Bluetooth and NFC support for Qt5
REVISION-qch =	0
REVISION-html =	0

SHARED_LIBS =	Qt5Bluetooth		2.0
SHARED_LIBS +=	Qt5Nfc			2.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =	GL Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB +=	Qt5Quick m pthread

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =	x11/dbus

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
