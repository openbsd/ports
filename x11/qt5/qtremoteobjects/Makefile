# $OpenBSD: Makefile,v 1.1.1.1 2017/06/15 08:33:50 zhuk Exp $

QT5NAME =		QtRemoteObjects
COMMENT-main =		inter-process communication using Qt5 objects

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5RemoteObjects		0.0

WANTLIB =  ${LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
