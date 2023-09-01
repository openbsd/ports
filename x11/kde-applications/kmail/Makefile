USE_WXNEEDED =	Yes

COMMENT =	KDE PIM email client
DISTNAME =	kmail-${VERSION}
CATEGORIES =	net mail

HOMEPAGE =	https://kontact.kde.org/components/kmail/

SHARED_LIBS +=  kmailprivate       7.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5CalendarCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5GuiAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOFileWidgets KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Notifications KF5NotifyConfig KF5Parts
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5TextEditTextToSpeech KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KPim5AkonadiAgentBase KPim5AkonadiContact
WANTLIB += KPim5AkonadiCore KPim5AkonadiMime KPim5AkonadiSearchDebug
WANTLIB += KPim5AkonadiSearchPIM KPim5AkonadiWidgets KPim5CalendarUtils
WANTLIB += KPim5ContactEditor KPim5GrantleeTheme KPim5Gravatar
WANTLIB += KPim5IMAP KPim5IdentityManagement KPim5IdentityManagementWidgets
WANTLIB += KPim5KManageSieve KPim5KSieve KPim5KSieveUi KPim5KontactInterface
WANTLIB += KPim5Ldap KPim5Libkdepim KPim5Libkleo KPim5MailCommon
WANTLIB += KPim5MailTransport KPim5MessageComposer KPim5MessageCore
WANTLIB += KPim5MessageList KPim5MessageViewer KPim5Mime KPim5MimeTreeParser
WANTLIB += KPim5PimCommon KPim5PimCommonAkonadi KPim5TemplateParser
WANTLIB += KPim5TextEdit KPim5Tnef KPim5WebEngineViewer KUserFeedbackCore
WANTLIB += KUserFeedbackWidgets Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 assuan c
WANTLIB += gpgme gpgmepp m qgpgme qt5keychain

WANTLIB += lib/inotify/inotify

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/akonadi-import-wizard \
		x11/kde-applications/kdepim-runtime \
		x11/kde-applications/kmail-account-wizard \
		x11/kde-applications/mbox-importer \
		x11/kde-applications/pim-sieve-editor

LIB_DEPENDS =	devel/kf5/kauth \
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
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		devel/libinotify \
		security/gpgme,-qt \
		productivity/kuserfeedback \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/akonadi-search \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kldap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/ktnef \
		x11/kde-applications/libgravatar \
		x11/kde-applications/libkdepim \
		x11/kde-applications/libkleo \
		x11/kde-applications/libksieve \
		x11/kde-applications/mailcommon \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
