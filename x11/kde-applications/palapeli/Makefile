# $OpenBSD: Makefile,v 1.12 2021/11/10 06:37:57 rsadowski Exp $

COMMENT =	jigsaw puzzle game
DISTNAME =	palapeli-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/palapeli

SHARED_LIBS +=  pala                      3.0 # 0.2

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDEGames KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml X11 c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio  \
		devel/kf5/kitemviews  \
		devel/kf5/knotifications  \
		devel/kf5/kservice  \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkdegames \
		x11/qt5/qtsvg

.include <bsd.port.mk>
