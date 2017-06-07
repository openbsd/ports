# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS =	KF5Crash	2.0

WANTLIB =  ICE KF5CoreAddons KF5WindowSystem Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 Xext m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwindowsystem \
		x11/qt5/qtx11extras

# TODO: The following tests FAILED:
# 2 - kcrashtest (Failed)

.include <bsd.port.mk>
