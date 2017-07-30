# $OpenBSD: Makefile,v 1.5 2017/07/30 12:50:58 espie Exp $

COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}
REVISION =		1

SHARED_LIBS =		KF5WindowSystem		2.0

WANTLIB =  ICE ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += Xfixes Xrender m xcb xcb-keysyms

# tests are likely to fail outside KWin
TEST_IS_INTERACTIVE =	X11

LIB_DEPENDS =		x11/qt5/qtx11extras

.include <bsd.port.mk>
