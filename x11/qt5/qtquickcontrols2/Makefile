# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:16 zhuk Exp $

QT5NAME =	Qt Labs Controls
DISTNAME =	qtquickcontrols2-opensource-src-${DIST_VERSION}
COMMENT-main =	Qt5 Quick based UI controls from Qt Labs

SHARED_LIBS =	Qt5LabsTemplates	0.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB =	GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
