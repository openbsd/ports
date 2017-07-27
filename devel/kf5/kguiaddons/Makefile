# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =	Utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5GuiAddons		2.0

WANTLIB =	ICE ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5X11Extras SM X11 Xext m xcb

LIB_DEPENDS =		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
