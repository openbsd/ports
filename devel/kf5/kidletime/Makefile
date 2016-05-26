# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}

SHARED_LIBS =		KF5IdleTime		0.0

WANTLIB =  ICE SM X11 X11-xcb Xext Xss m xcb xcb-sync
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras

.include <bsd.port.mk>
