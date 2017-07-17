# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:39 zhuk Exp $

QT5NAME =		QtWebSockets
COMMENT-main =		Qt5 implementation of WebSocket protocol

SHARED_LIBS =		Qt5WebSockets		2.1

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
