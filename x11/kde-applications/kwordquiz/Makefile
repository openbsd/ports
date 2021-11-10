# $OpenBSD: Makefile,v 1.8 2021/11/10 06:37:55 rsadowski Exp $

COMMENT =	general purpose flash card program for KDE
DISTNAME =	kwordquiz-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kwordquiz

WANTLIB += ${COMPILER_LIBCXX} KEduVocDocument KF5Attica KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n KF5ItemViews
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Notifications KF5NotifyConfig
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml X11 c m phonon4qt5

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemviews \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkeduvocdocument \
		multimedia/phonon

.include <bsd.port.mk>
