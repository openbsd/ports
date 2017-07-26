# $OpenBSD: Makefile,v 1.3 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtScxml
REVISION =		0
COMMENT-main =		create state machines from SCXML files

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5Scxml		0.0

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
