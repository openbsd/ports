# $OpenBSD: Makefile,v 1.2 2016/12/26 18:59:22 landry Exp $

QT5NAME =		QtEnginio
DISTNAME =		${QT5NAME:L}-opensource-src-${ENGINIO_VERSION}
COMMENT-main =		Qt5 cloud data storage engine

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =		Enginio			2.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		Qt5Core Qt5Network Qt5Qml m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

SUBST_VARS =		ENGINIO_VERSION

.include <bsd.port.mk>
