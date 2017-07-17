# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =		QtLocation
COMMENT-main =		Qt5 geo positioning APIs

SHARED_LIBS =		Qt5Location		1.1
SHARED_LIBS +=		Qt5Positioning		2.1

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick
WANTLIB += m pthread Qt5Concurrent

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =		x11/dbus

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
