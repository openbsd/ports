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
SHARED_LIBS +=	newmailnotifier             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6CalendarCore
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6Contacts KF6CoreAddons
WANTLIB += KF6DAV KF6I18n KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6NotifyConfig KF6Service KF6Solid KF6SonnetUi KF6TextCustomEditor
WANTLIB += KF6TextTemplate KF6TextWidgets KF6Wallet KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPim6AkonadiAgentBase KPim6AkonadiCalendar
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiNotes
WANTLIB += KPim6AkonadiWidgets KPim6GAPICalendar KPim6GAPICore
WANTLIB += KPim6GAPIPeople KPim6GAPITasks KPim6GrantleeTheme KPim6IMAP
WANTLIB += KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6LdapCore KPim6LdapWidgets KPim6MailTransport KPim6Mbox
WANTLIB += KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network
WANTLIB += Qt6NetworkAuth Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6TextToSpeech Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += X11 c m qca-qt6 qt6keychain sasl2

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kholidays

RUN_DEPENDS =	misc/shared-mime-info \
		devel/kf6/kholidays

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcalendarcore \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kdav \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		security/cyrus-sasl2 \
		security/qca-qt6 \
		security/qtkeychain,qt6 \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-calendar>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-notes>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kldap>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmbox>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/libkgapi>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtpositioning \
		x11/qt6/qtspeech \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS =	-Wno-enum-constexpr-conversion

.include <bsd.port.mk>
