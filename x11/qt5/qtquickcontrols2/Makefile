# $OpenBSD: Makefile,v 1.13 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =	Qt Labs Controls
DISTNAME =	qtquickcontrols2-everywhere-src-${DIST_VERSION}
COMMENT-main =	Qt5 Quick based UI controls from Qt Labs

SHARED_LIBS +=  Qt5QuickControls2             1.0 # 5.9
SHARED_LIBS +=  Qt5QuickTemplates2            1.0 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
