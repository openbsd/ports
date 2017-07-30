# $OpenBSD: Makefile,v 1.5 2017/07/30 14:40:08 espie Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}
REVISION =		1

SHARED_LIBS =		KF5IdleTime		2.0

WANTLIB += ICE ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =		x11/qt5/qtx11extras

NO_TEST =		Yes

.include <bsd.port.mk>
