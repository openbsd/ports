USE_WXNEEDED =	Yes

COMMENT =	news feed reader
DISTNAME =	akregator-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	https://apps.kde.org/akregator

SHARED_LIBS +=  akregatorinterfaces       2.0 # 5.13.2
SHARED_LIBS +=  akregatorprivate          4.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6Crash KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6ItemModels KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6NotifyConfig KF6Parts KF6Service
WANTLIB += KF6StatusNotifierItem KF6Syndication KF6TextAddonsWidgets
WANTLIB += KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextEditTextToSpeech KF6TextTemplate
WANTLIB += KF6TextUtils KF6UserFeedbackCore KF6UserFeedbackWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiPrivate KPim6GrantleeTheme KPim6KontactInterface
WANTLIB += KPim6Libkdepim KPim6Libkleo KPim6MessageCore KPim6MessageViewer
WANTLIB += KPim6Mime KPim6MimeTreeParser KPim6PimCommon KPim6PimCommonActivities
WANTLIB += KPim6WebEngineViewer PlasmaActivities Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml assuan c gpgme gpgmepp m qgpgmeqt6


MODKDE_TRANSLATIONS = yes
MODKDE_ICON_CACHE = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kitemviews \
		devel/kf6/ktexteditor \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/mailcommon>=${VERSION}

RUN_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/ktexteditor \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/kdepim-runtime>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/mailcommon>=${VERSION}

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/ktexttemplate \
		devel/kf6/kuserfeedback \
		devel/kf6/kiconthemes \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/kguiaddons \
		x11/kde-plasma/plasma-activities \
		devel/kf6/syndication \
		security/gpgme,-qt \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kontactinterface>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
