# $OpenBSD: Makefile,v 1.4 2016/12/28 01:41:23 zhuk Exp $

QT5NAME =		QtEnginio
REVISION-qch =		0
REVISION-html =		0

VERSION =		${ENGINIO_VERSION}
DIST_VERSION =		${ENGINIO_VERSION}
NEXT_VERSION =		${ENGINIO_NEXT_VERSION}

COMMENT-main =		Qt5 cloud data storage engine

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =		Enginio			2.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		Qt5Core Qt5Network Qt5Qml m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

SUBST_VARS =		ENGINIO_VERSION

.include <bsd.port.mk>
