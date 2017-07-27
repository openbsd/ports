# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =	execute actions as privileged user
DISTNAME =	kauth-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Auth		2.0

WANTLIB =	KF5CoreAddons ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB +=	c m polkit-qt5-core-1

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		x11/polkit-qt,qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
