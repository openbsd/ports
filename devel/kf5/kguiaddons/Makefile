# $OpenBSD: Makefile,v 1.16 2021/08/08 12:21:36 rsadowski Exp $

COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}

SHARED_LIBS =	KF5GuiAddons		6.3

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5X11Extras
WANTLIB += SM X11 Xext m xcb

LIB_DEPENDS =		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS +=	-DWITH_WAYLAND=OFF

.include <bsd.port.mk>
