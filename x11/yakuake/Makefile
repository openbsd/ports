# $OpenBSD: Makefile,v 1.47 2022/02/18 09:49:58 rsadowski Exp $

COMMENT =	drop-down terminal emulator based on KDE Konsole

DISTNAME =	yakuake-${MODKDE_VERSION}
EPOCH =		0

CATEGORIES =	x11 sysutils

HOMEPAGE =	https://kde.org/applications/system/org.kde.yakuake

MASTER_SITES =	${MASTER_SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Notifications KF5NotifyConfig KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5WaylandClient
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml X11 c m

MODULES =	x11/kde-applications \
		devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		x11/kde-applications/konsole

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwayland \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet

.include <bsd.port.mk>
