# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5IdleTime		2.0

WANTLIB += ICE ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =		x11/qt5/qtx11extras

NO_TEST =		Yes

.include <bsd.port.mk>
