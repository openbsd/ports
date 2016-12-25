# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:18 zhuk Exp $

QT5NAME =		QtScript
COMMENT-main =		ECMAScript language for Qt5

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =	Qt5Script		2.0
SHARED_LIBS +=	Qt5ScriptTools		2.0

WANTLIB =		GL Qt5Core Qt5Gui Qt5Widgets m pthread

RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
