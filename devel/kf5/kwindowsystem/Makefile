# $OpenBSD: Makefile,v 1.8 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}

SHARED_LIBS =		KF5WindowSystem		4.1

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 Xext Xfixes Xrender m xcb xcb-keysyms

# tests are likely to fail outside KWin
TEST_IS_INTERACTIVE =	X11

LIB_DEPENDS =		x11/qt5/qtx11extras

.include <bsd.port.mk>
