# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 10:17:45 rsadowski Exp $

COMMENT =	KDE password wallet manager
DISTNAME =	kwalletmanager-${VERSION}
CATEGORIES =	x11 security

HOMEPAGE =	https://userbase.kde.org/KDE_Wallet_Manager

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5Notifications KF5Service
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes
MODKDE5_ICON_CACHE = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=devel/kf5/ktextwidgets

RUN_DEPENDS+=	devel/kf5/ktextwidgets \
		x11/dbus,-suid

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
