# $OpenBSD: Makefile,v 1.1.1.1 2020/06/14 04:57:35 rsadowski Exp $

COMMENT =	notes management tool
DISTNAME =	knotes-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	http://knotesapp.com/

SHARED_LIBS +=  knotesprivate           0.0 # 5.13.2
SHARED_LIBS +=  notesharedprivate       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates ICE KF5AkonadiAgentBase
WANTLIB += KF5AkonadiContact KF5AkonadiCore KF5AkonadiNotes KF5AkonadiSearchDebug
WANTLIB += KF5AkonadiSearchPIM KF5AkonadiWidgets KF5Attica KF5Auth
WANTLIB += KF5AuthCore KF5Bookmarks KF5CalendarCore KF5CalendarUtils
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5DNSSD KF5GlobalAccel KF5GrantleeTheme
WANTLIB += KF5I18n KF5IMAP KF5IconThemes KF5ItemModels KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5KontactInterface KF5Libkdepim KF5Mime
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Notifications KF5NotifyConfig
WANTLIB += KF5Parts KF5PimCommon KF5PimCommonAkonadi KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml SM X11 Xext c m

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kdnssd \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/akonadi-search \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
