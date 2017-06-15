# $OpenBSD: Makefile,v 1.1.1.1 2017/06/15 08:35:15 zhuk Exp $

QT5NAME =		QtScxml
COMMENT-main =		create state machines from SCXML files

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5Scxml		0.0

WANTLIB =  ${LIBCXX} Qt5Core Qt5Network Qt5Qml c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
