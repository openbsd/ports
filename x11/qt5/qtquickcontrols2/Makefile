# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =	Qt Labs Controls
DISTNAME =	qtquickcontrols2-opensource-src-${DIST_VERSION}
COMMENT-main =	Qt5 Quick based UI controls from Qt Labs

#SHARED_LIBS =	Qt5LabsTemplates	0.0
#SHARED_LIBS +=	Qt5LabsTemplates2	0.0
SHARED_LIBS +=	Qt5QuickControls2	0.0
SHARED_LIBS +=	Qt5QuickTemplates2	0.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =	${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick
WANTLIB +=	Qt5Widgets m pthread

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
