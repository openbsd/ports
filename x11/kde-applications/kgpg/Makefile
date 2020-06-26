# $OpenBSD: Makefile,v 1.3 2020/06/26 05:52:19 rsadowski Exp $

COMMENT =	KDE interface to GnuPG
DISTNAME =	kgpg-${VERSION}
CATEGORIES =	x11
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiWidgets KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost \
		security/gpgme,-qt

RUN_DEPENDS =	security/gpgme

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
