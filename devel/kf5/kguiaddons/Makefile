# $OpenBSD: Makefile,v 1.7 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}

SHARED_LIBS =	KF5GuiAddons		4.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5X11Extras
WANTLIB += SM X11 Xext m xcb

LIB_DEPENDS =		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
