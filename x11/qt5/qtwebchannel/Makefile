# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtWebChannel
COMMENT-main =		Qt5 seamless HTML/JavaScript integration
REVISION-qch =		0
REVISION-html =		0

SHARED_LIBS =		Qt5WebChannel		1.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =		GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

BUILD_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
