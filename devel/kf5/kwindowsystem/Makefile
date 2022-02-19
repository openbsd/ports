# $OpenBSD: Makefile,v 1.19 2022/02/19 09:45:45 rsadowski Exp $

COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}

SHARED_LIBS =		KF5WindowSystem		6.6

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 Xext Xfixes m xcb xcb-keysyms xcb-res

LIB_DEPENDS =	x11/qt5/qtx11extras

# tests are likely to fail outside KWin
#The following tests FAILED:
#6 - kwindowsystem-kwindowinfox11test (Failed)
#7 - kwindowsystem-kwindowsystemx11test (Failed)
#9 - kwindowsystem-netrootinfotestwm (Failed)
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
