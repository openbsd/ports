# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	global desktop keyboard shortcuts for KDE
DISTNAME =	kglobalaccel-${VERSION}

SHARED_LIBS =	KF5GlobalAccel		0.0
SHARED_LIBS +=	KF5GlobalAccelPrivate	0.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += c m xcb xcb-keysyms

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kwindowsystem

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
