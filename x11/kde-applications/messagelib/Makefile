COMMENT =	KDE PIM messaging library
DISTNAME =	messagelib-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5MessageComposer      1.0 # 0.0
SHARED_LIBS +=  KPim5MessageCore          1.0 # 0.0
SHARED_LIBS +=  KPim5MessageList          1.0 # 0.0
SHARED_LIBS +=  KPim5MessageViewer        1.0 # 0.0
SHARED_LIBS +=  KPim5MimeTreeParser       0.1 # 0.0
SHARED_LIBS +=  KPim5TemplateParser       1.0 # 0.0
SHARED_LIBS +=  KPim5WebEngineViewer      1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Bookmarks KF5CalendarCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5Contacts KF5CoreAddons KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5SonnetCore KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5TextEditTextToSpeech KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiSearchPIM KPim5AkonadiWidgets
WANTLIB += KPim5ContactEditor KPim5GrantleeTheme KPim5Gravatar
WANTLIB += KPim5IMAP KPim5IdentityManagement KPim5IdentityManagementWidgets
WANTLIB += KPim5Libkdepim KPim5Libkleo KPim5MailTransport KPim5Mbox
WANTLIB += KPim5Mime KPim5PimCommon KPim5PimCommonAkonadi KPim5TextEdit
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += X11 assuan gpgme gpgmepp m qca-qt5 qgpgme

WANTLIB += lib/inotify/inotify



MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		devel/libinotify \
		security/libassuan \
		security/qca-qt5 \
		x11/grantlee-qt5 \
		security/gpgme,-qt \
		security/gpgme \
		textproc/ktextaddons \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmbox \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libgravatar \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/kde-applications/libkleo \
		x11/qt5/qtlocation \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=        -I${LOCALBASE}/include/inotify/

.include <bsd.port.mk>
