# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}

SHARED_LIBS =		KF5IdleTime		2.0

WANTLIB += ICE Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =		x11/qt5/qtx11extras

NO_TEST =		Yes

.include <bsd.port.mk>
