USE_WXNEEDED =	Yes

COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-runtime-${VERSION}
PKGNAME =	kdepim-runtime-kf5-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  akonadi-filestore           1.0 # 5.13.2
SHARED_LIBS +=  akonadi-singlefileresource  2.0 # 5.13.2
SHARED_LIBS +=  folderarchivesettings       1.0 # 5.13.2
SHARED_LIBS +=  kmindexreader               1.0 # 5.13.2
SHARED_LIBS +=  maildir                     1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5CalendarCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5DAV KF5I18n KF5ItemModels KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Notifications KF5NotifyConfig
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui KPim5AkonadiAgentBase
WANTLIB += KPim5AkonadiCalendar KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiNotes KPim5AkonadiWidgets
WANTLIB += KPim5GAPICalendar KPim5GAPICore KPim5GAPIPeople KPim5GAPITasks
WANTLIB += KPim5GrantleeTheme KPim5IMAP KPim5IdentityManagement
WANTLIB += KPim5IdentityManagementWidgets KPim5Ldap KPim5Libkdepim
WANTLIB += KPim5MailTransport KPim5Mbox KPim5Mime KPim5TextEdit
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5NetworkAuth
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5TextToSpeech Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 c m qca-qt5
WANTLIB += qt5keychain sasl2

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/kholidays \
		x11/qt5/qtxmlpatterns

RUN_DEPENDS =	misc/shared-mime-info \
		devel/kf5/kholidays

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdav \
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
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kldap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmbox \
		x11/kde-applications/kmime \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkgapi \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtnetworkauth \
		x11/qt5/qtspeech \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
