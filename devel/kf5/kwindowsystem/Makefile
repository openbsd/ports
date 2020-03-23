# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:11 rsadowski Exp $

COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}

SHARED_LIBS =		KF5WindowSystem		5.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 Xext Xfixes Xrender m xcb xcb-keysyms xcb-res

LIB_DEPENDS =	x11/qt5/qtx11extras

# tests are likely to fail outside KWin
#The following tests FAILED:
#6 - kwindowsystem-kwindowinfox11test (Failed)
#7 - kwindowsystem-kwindowsystemx11test (Failed)
#9 - kwindowsystem-netrootinfotestwm (Failed)
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
