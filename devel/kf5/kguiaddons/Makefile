# $OpenBSD: Makefile,v 1.13 2020/09/07 14:48:47 rsadowski Exp $

COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}

SHARED_LIBS =	KF5GuiAddons		6.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5X11Extras
WANTLIB += SM X11 Xext m xcb

LIB_DEPENDS =		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
