# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =	KDE convenience classes for DBus
DISTNAME =	kdbusaddons-${VERSION}

SHARED_LIBS =	KF5DBusAddons		2.0

WANTLIB =	Qt5Core Qt5DBus Qt5Gui Qt5X11Extras c m

LIB_DEPENDS =	x11/qt5/qtx11extras

# XXX tests stuck anyway
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
