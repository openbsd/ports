# $OpenBSD: Makefile,v 1.3 2020/06/03 05:13:46 rsadowski Exp $

COMMENT =	KDE tool for sweeping unwanted traces from system
DISTNAME =	sweeper-${VERSION}
CATEGORIES =	devel
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5ActivitiesStats KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5KIOCore KF5Service
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kactivities-stats \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet

.include <bsd.port.mk>
