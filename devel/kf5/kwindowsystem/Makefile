COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}

SHARED_LIBS =		KF5WindowSystem		6.8

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 Xext Xfixes m xcb xcb-keysyms xcb-res

LIB_DEPENDS =	x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
