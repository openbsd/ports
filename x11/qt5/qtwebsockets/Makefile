# $OpenBSD: Makefile,v 1.8 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtWebSockets
COMMENT-main =		Qt5 implementation of WebSocket protocol
REVISION-main =		1

SHARED_LIBS =		Qt5WebSockets		2.2

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
