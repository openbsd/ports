# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =	speed up for applications inside KDE workspaces
DISTNAME =	kinit-${VERSION}

SHARED_LIBS =	kdeinit5_klauncher	4.1

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets X11 c
WANTLIB += m xcb

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Libcap=Yes

.include <bsd.port.mk>
