# $OpenBSD: Makefile,v 1.18 2021/11/16 14:30:59 rsadowski Exp $

COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}

SHARED_LIBS =	KF5GuiAddons		6.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5WaylandClient
WANTLIB += Qt5X11Extras X11 m wayland-client xcb

LIB_DEPENDS =		x11/qt5/qtx11extras \
			x11/qt5/qtwayland

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
