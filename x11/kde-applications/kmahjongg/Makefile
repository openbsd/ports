# $OpenBSD: Makefile,v 1.6 2020/03/23 18:01:22 rsadowski Exp $

COMMENT =	Mah Jongg four players board game for KDE5
DISTNAME =	kmahjongg-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kmahjongg

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5KDEGames KF5KDEGamesPrivate
WANTLIB += KF5KMahjongglib KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/qt5/qtsvg \
		devel/kf5/knewstuff

RUN_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/qt5/qtsvg \
		devel/kf5/knewstuff

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/kde-applications/libkdegames \
		x11/kde-applications/libkmahjongg

.include <bsd.port.mk>
