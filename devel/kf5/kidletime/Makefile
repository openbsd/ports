COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5IdleTime		6.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5X11Extras
WANTLIB += SM X11 X11-xcb Xext Xss m xcb xcb-sync

LIB_DEPENDS =	x11/qt5/qtx11extras

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
