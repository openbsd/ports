COMMENT =	KDE PIM messaging library
DISTNAME =	messagelib-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6MessageComposer      2.0 # 0.0
SHARED_LIBS +=	KPim6MessageCore          2.0 # 0.0
SHARED_LIBS +=	KPim6MessageList          3.0 # 0.0
SHARED_LIBS +=	KPim6MessageViewer        3.0 # 0.0
SHARED_LIBS +=	KPim6MimeTreeParser       2.0 # 0.0
SHARED_LIBS +=	KPim6TemplateParser       1.0 # 0.0
SHARED_LIBS +=	KPim6WebEngineViewer      2.0 # 0.0

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
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiSearchPIM KPim6AkonadiWidgets KPim6GrantleeTheme
WANTLIB += KPim6Gravatar KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6IdentityManagementWidgets KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MailTransport KPim6Mbox KPim6Mime KPim6PimCommon
WANTLIB += KPim6PimCommonAkonadi KPim6TextEdit Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml crypto gpg-error gpgme gpgmepp m
WANTLIB += qgpgmeqt6

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
		security/qgpgme \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi-search>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmbox>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/libgravatar>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS =	-I${LOCALBASE}/include/inotify/

.include <bsd.port.mk>
