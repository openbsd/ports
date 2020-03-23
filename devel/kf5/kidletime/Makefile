# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:08 rsadowski Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}

SHARED_LIBS =		KF5IdleTime		5.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =	x11/qt5/qtx11extras

.include <bsd.port.mk>
