# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtWebSockets
REVISION =		0
COMMENT-main =		Qt5 implementation of WebSocket protocol

SHARED_LIBS =		Qt5WebSockets		2.1

MULTI_PACKAGES =	-main -examples

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
