COMMENT =	KDE PIM messaging library
DISTNAME =	messagelib-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6MessageComposer      0.0 # 0.0
SHARED_LIBS +=	KPim6MessageCore          0.0 # 0.0
SHARED_LIBS +=	KPim6MessageList          0.0 # 0.0
SHARED_LIBS +=	KPim6MessageViewer        0.0 # 0.0
SHARED_LIBS +=	KPim6MimeTreeParser       0.0 # 0.0
SHARED_LIBS +=	KPim6TemplateParser       0.0 # 0.0
SHARED_LIBS +=	KPim6WebEngineViewer      0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6CalendarCore
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6Contacts KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets KF6ItemModels
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Service
WANTLIB += KF6Solid KF6SonnetCore KF6SonnetUi KF6SyntaxHighlighting
WANTLIB += KF6TextAddonsWidgets KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextEditTextToSpeech KF6TextTemplate
WANTLIB += KF6TextUtils KF6TextWidgets KF6WidgetsAddons KF6XmlGui
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiSearchPIM
WANTLIB += KPim6AkonadiWidgets KPim6GrantleeTheme KPim6Gravatar
WANTLIB += KPim6IMAP KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6Libkdepim KPim6Libkleo KPim6MailTransport KPim6Mbox
WANTLIB += KPim6Mime KPim6PimCommon KPim6PimCommonAkonadi KPim6TextEdit
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += assuan gpgme gpgmepp m qca-qt6 qgpgmeqt6

WANTLIB += lib/inotify/inotify



MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

RUN_DEPENDS =	devel/kf6/kwallet

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kwallet

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		security/gpgme,-qt \
		security/libassuan \
		security/qca-qt6 \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-search>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmbox>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/libgravatar>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=        -I${LOCALBASE}/include/inotify/

.include <bsd.port.mk>
