# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtLocation
COMMENT-main =		Qt5 geo positioning APIs
REVISION-qch =		0
REVISION-html =		0

SHARED_LIBS =		Qt5Location		1.0
SHARED_LIBS +=		Qt5Positioning		2.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =		GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick
WANTLIB +=		m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =		x11/dbus

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
