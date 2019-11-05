# $OpenBSD: Makefile,v 1.11 2019/11/05 10:18:54 rsadowski Exp $

QT5NAME =	Qt Labs Controls
DISTNAME =	qtquickcontrols2-opensource-src-${DIST_VERSION}
COMMENT-main =	Qt5 Quick based UI controls from Qt Labs

SHARED_LIBS +=	Qt5QuickControls2	0.2
SHARED_LIBS +=	Qt5QuickTemplates2	0.2

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
