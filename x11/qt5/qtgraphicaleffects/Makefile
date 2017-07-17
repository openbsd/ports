# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =		QtGraphicalEffects
COMMENT-main =		UI effects library for Qt Quick

MULTI_PACKAGES =	-main -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
