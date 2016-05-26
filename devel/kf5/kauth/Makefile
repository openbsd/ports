# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

COMMENT =	execute actions as privileged user
DISTNAME =	kauth-${VERSION}

SHARED_LIBS =	KF5Auth		0.0

WANTLIB =	KF5CoreAddons Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB +=	c m polkit-qt5-core-1

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		x11/polkit-qt,qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
