# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtWebChannel
REVISION =		0
COMMENT-main =		Qt5 seamless HTML/JavaScript integration

SHARED_LIBS =		Qt5WebChannel		1.1

MULTI_PACKAGES =	-main -examples

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

BUILD_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
