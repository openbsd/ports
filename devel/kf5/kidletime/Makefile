# $OpenBSD: Makefile,v 1.13 2020/09/07 14:48:48 rsadowski Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}

SHARED_LIBS =		KF5IdleTime		6.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5X11Extras
WANTLIB += SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =	x11/qt5/qtx11extras

.include <bsd.port.mk>
