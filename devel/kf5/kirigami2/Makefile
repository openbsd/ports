# $OpenBSD: Makefile,v 1.11 2019/05/20 22:15:05 naddy Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS +=  KF5Kirigami2              1.3 # 5.41

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
