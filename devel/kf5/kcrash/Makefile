# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS =	KF5Crash	0.0

WANTLIB =  ICE KF5CoreAddons KF5WindowSystem Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 Xext m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwindowsystem

.include <bsd.port.mk>
