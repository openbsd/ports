# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =	speed up for applications inside KDE workspaces
DISTNAME =	kinit-${VERSION}
REVISION =	0

SHARED_LIBS =	kdeinit5_klauncher	2.0

WANTLIB =  KF5Completion KF5ConfigCore KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons KF5WindowSystem
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += X11 c m xcb

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

TEST_NO =	Yes

.include <bsd.port.mk>
