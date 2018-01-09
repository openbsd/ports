# $OpenBSD: Makefile,v 1.7 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	KDE convenience classes for DBus
DISTNAME =	kdbusaddons-${VERSION}

SHARED_LIBS =	KF5DBusAddons		4.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5X11Extras
WANTLIB += c m

LIB_DEPENDS =	x11/qt5/qtx11extras

# XXX tests stuck anyway
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
