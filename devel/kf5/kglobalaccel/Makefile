# $OpenBSD: Makefile,v 1.5 2017/07/30 14:40:08 espie Exp $

COMMENT =	global desktop keyboard shortcuts for KDE
DISTNAME =	kglobalaccel-${VERSION}
REVISION =	1

SHARED_LIBS =	KF5GlobalAccel		2.0
SHARED_LIBS +=	KF5GlobalAccelPrivate	2.0

WANTLIB += KF5ConfigCore KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5Service KF5WindowSystem ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras c m xcb xcb-keysyms

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
