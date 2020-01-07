# $OpenBSD: Makefile,v 1.10 2020/01/07 20:22:08 zhuk Exp $

QT5NAME =		QtWebChannel
COMMENT-main =		Qt5 seamless HTML/JavaScript integration
REVISION-main =		0

SHARED_LIBS =		Qt5WebChannel		1.2

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

BUILD_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
