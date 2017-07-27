# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =	KDE convenience classes for DBus
DISTNAME =	kdbusaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5DBusAddons		2.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5X11Extras c m

LIB_DEPENDS =	x11/qt5/qtx11extras

# XXX tests stuck anyway
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
