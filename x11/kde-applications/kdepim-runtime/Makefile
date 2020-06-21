# $OpenBSD: Makefile,v 1.3 2020/06/21 18:12:53 rsadowski Exp $

COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-runtime-${VERSION}
PKGNAME =	kdepim-runtime-kf5-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  akonadi-filestore           0.0 # 5.13.2
SHARED_LIBS +=  akonadi-singlefileresource  0.0 # 5.13.2
SHARED_LIBS +=  folderarchivesettings       0.0 # 5.13.2
SHARED_LIBS +=  kmindexreader               0.0 # 5.13.2
SHARED_LIBS +=  maildir                     0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiAgentBase KF5AkonadiCalendar
WANTLIB += KF5AkonadiContact KF5AkonadiCore KF5AkonadiMime KF5AkonadiNotes
WANTLIB += KF5AkonadiWidgets KF5AlarmCalendar KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5CalendarCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5DBusAddons KF5Holidays KF5I18n KF5IMAP
WANTLIB += KF5IdentityManagement KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIONTLM KF5KIOWidgets
WANTLIB += KF5MailTransport KF5MailTransportAkonadi KF5Mbox KF5Mime
WANTLIB += KF5Notifications KF5NotifyConfig KF5PimCommon KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui KPimGAPICalendar
WANTLIB += KPimGAPIContacts KPimGAPICore KPimGAPITasks KPimKDAV
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5NetworkAuth
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5TextToSpeech
WANTLIB += Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml c m qca-qt5 sasl2

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		security/cyrus-sasl2 \
		security/qca-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/akonadi-notes \
		x11/kde-applications/kdav \
		x11/kde-applications/kalarmcal \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmbox \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkgapi \
		x11/kde-applications/pimcommon \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtnetworkauth \
		x11/qt5/qtspeech \
		x11/qt5/qtwebchannel

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
