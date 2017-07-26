# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtScript
REVISION =		0
COMMENT-main =		ECMAScript language for Qt5

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5Script		2.1
SHARED_LIBS +=	Qt5ScriptTools		2.1

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m pthread

RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
