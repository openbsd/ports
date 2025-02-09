USE_WXNEEDED =	Yes

COMMENT =	news feed reader
DISTNAME =	akregator-${VERSION}
CATEGORIES =	net www
REVISION =	0

HOMEPAGE =	https://apps.kde.org/akregator

SHARED_LIBS +=  akregatorinterfaces       2.0 # 5.13.2
SHARED_LIBS +=  akregatorprivate          4.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6Crash KF6I18n KF6IconThemes KF6ItemModels
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6NotifyConfig KF6Parts KF6Service KF6Solid KF6StatusNotifierItem
WANTLIB += KF6Syndication KF6TextAddonsWidgets KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextCustomEditor KF6TextEditTextToSpeech
WANTLIB += KF6TextTemplate KF6TextUtils KF6UserFeedbackCore KF6UserFeedbackWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6GrantleeTheme KPim6KontactInterface KPim6Libkdepim
WANTLIB += KPim6Libkleo KPim6MessageCore KPim6MessageViewer KPim6Mime
WANTLIB += KPim6MimeTreeParser KPim6PimCommon KPim6PimCommonActivities
WANTLIB += KPim6WebEngineViewer PlasmaActivities Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml assuan c gpgme
WANTLIB += gpgmepp m qgpgmeqt6


MODKDE_TRANSLATIONS = yes
MODKDE_ICON_CACHE = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kitemviews \
		devel/kf6/ktexteditor \
		x11/kde-applications/akonadi-contacts>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_GEAR_VERSION}

RUN_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/ktexteditor \
		x11/kde-applications/akonadi-contacts>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kdepim-runtime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_GEAR_VERSION}

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
		devel/kf6/solid \
		x11/kde-plasma/plasma-activities \
		devel/kf6/syndication \
		security/gpgme,-qt \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-mime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kontactinterface>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/messagelib>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
