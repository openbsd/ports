# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	KDE convenience classes for DBus
DISTNAME =	kdbusaddons-${VERSION}

SHARED_LIBS =	KF5DBusAddons		0.0

WANTLIB =	Qt5Core Qt5DBus Qt5Gui Qt5X11Extras c m

# XXX tests stuck anyway
#PORTHOME =		${WRKDIR}
#TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
