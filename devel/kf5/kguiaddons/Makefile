# $OpenBSD: Makefile,v 1.17 2021/11/12 14:31:39 rsadowski Exp $

COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5GuiAddons		6.4

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5X11Extras
WANTLIB += SM X11 Xext m xcb

RUN_DEPENDS =		x11/qt5/qtwayland
BUILD_DEPENDS =		x11/qt5/qtwayland

LIB_DEPENDS =		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
