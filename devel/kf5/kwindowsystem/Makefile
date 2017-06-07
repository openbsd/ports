# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:39 rsadowski Exp $

COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}

SHARED_LIBS =		KF5WindowSystem		2.0

WANTLIB =  ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += Xfixes Xrender m xcb xcb-keysyms

# tests are likely to fail outside KWin
TEST_IS_INTERACTIVE =	X11

LIB_DEPENDS =		x11/qt5/qtx11extras

.include <bsd.port.mk>
