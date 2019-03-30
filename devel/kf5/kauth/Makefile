# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:48 rsadowski Exp $

COMMENT =	execute actions as privileged user
DISTNAME =	kauth-${VERSION}

SHARED_LIBS =	KF5Auth		4.3

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Widgets c m polkit-qt5-core-1

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		x11/polkit-qt,qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
