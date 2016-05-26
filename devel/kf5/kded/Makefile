# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	central daemon of KDE workspaces
DISTNAME =	kded-${VERSION}

SHARED_LIBS =	kdeinit5_kded5		0.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5Service Qt5Core Qt5DBus Qt5Gui Qt5Widgets c m

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kinit

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kinit

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kservice

.include <bsd.port.mk>
