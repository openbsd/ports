# $OpenBSD: Makefile,v 1.10 2019/03/08 20:00:42 cwen Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5IdleTime		4.2

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =		x11/qt5/qtx11extras

.include <bsd.port.mk>
