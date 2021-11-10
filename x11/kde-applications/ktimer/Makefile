# $OpenBSD: Makefile,v 1.8 2021/11/10 06:37:54 rsadowski Exp $

COMMENT =	graphical timer based task execution for KDE
DISTNAME =	ktimer-${VERSION}
CATEGORIES =	x11 sysutils

HOMEPAGE =	https://kde.org/applications/utilities/org.kde.ktimer

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Notifications KF5Service KF5Solid
WANTLIB += KF5WidgetsAddons KF5WindowSystem Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kitemviews \
		devel/kf5/kxmlgui \
		devel/kf5/solid

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

.include <bsd.port.mk>
