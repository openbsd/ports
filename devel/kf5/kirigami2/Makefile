# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:08 rsadowski Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS +=  KF5Kirigami2              2.0 # 5.41

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickControls2 m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtsvg

RUN_DEPENDS =	x11/qt5/qtgraphicaleffects \
		x11/qt5/qtsvg

LIB_DEPENDS =	x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
