# $OpenBSD: Makefile,v 1.6 2020/06/03 05:13:40 rsadowski Exp $

COMMENT =	Japanese reference tool for KDE
DISTNAME =	kiten-${VERSION}
CATEGORIES =	education
REVISION =	0

SHARED_LIBS +=  kiten                     1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5JS KF5JobWidgets
WANTLIB += KF5KHtml KF5KIOCore KF5KIOWidgets KF5Notifications
WANTLIB += KF5Parts KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/khtml \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/knotifications \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet

.include <bsd.port.mk>
