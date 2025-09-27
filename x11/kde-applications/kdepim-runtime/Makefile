USE_WXNEEDED =	Yes

COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-runtime-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  akonadi-filestore           2.0 # 5.13.2
SHARED_LIBS +=  akonadi-singlefileresource  3.0 # 5.13.2
SHARED_LIBS +=  folderarchivesettings       2.0 # 5.13.2
SHARED_LIBS +=  kmindexreader               1.0 # 5.13.2
SHARED_LIBS +=  maildir                     1.0 # 5.13.2
SHARED_LIBS +=	newmailnotifier             0.0 # 0.0
SHARED_LIBS +=	akonadi-singlefileresource-widget 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6CalendarCore
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6Contacts KF6CoreAddons
WANTLIB += KF6DAV KF6GuiAddons KF6I18n KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6NotifyConfig KF6Service KF6Solid
WANTLIB += KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6Wallet KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPim6AkonadiAgentBase KPim6AkonadiAgentWidgetBase
WANTLIB += KPim6AkonadiCalendar KPim6AkonadiCalendarCore KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiPrivate KPim6AkonadiWidgets KPim6GAPICalendar
WANTLIB += KPim6GAPICore KPim6GAPIPeople KPim6GAPITasks KPim6GrantleeTheme
WANTLIB += KPim6IMAP KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6LdapCore KPim6LdapWidgets KPim6Libkdepim KPim6MailTransport
WANTLIB += KPim6Mbox KPim6Mime KPim6PimCommon KPim6PimCommonActivities
WANTLIB += KPim6PimCommonAkonadi PlasmaActivities Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6NetworkAuth Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6TextToSpeech Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += X11 c m qca-qt6 qt6keychain sasl2

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	misc/shared-mime-info

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
		devel/kf6/kguiaddons \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		security/cyrus-sasl2 \
		security/qca-qt6 \
		security/qtkeychain,qt6 \
		textproc/ktextaddons \
		x11/kde-plasma/plasma-activities  \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kldap>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmbox>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/libkgapi>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtpositioning \
		x11/qt6/qtspeech \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11
TEST_ENV=		LC_ALL=en_US.UTF-8

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
