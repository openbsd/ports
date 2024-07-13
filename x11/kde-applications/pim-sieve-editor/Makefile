COMMENT =	mail sieve editor
DISTNAME =	pim-sieve-editor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  sieveeditor       4.1 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6ColorScheme KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6I18n KF6KIOCore
WANTLIB += KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6UserFeedbackCore KF6UserFeedbackWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui KPim6KManageSieve KPim6KSieve
WANTLIB += KPim6KSieveCore KPim6KSieveUi KPim6MailTransport KPim6PimCommon
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += c m qt6keychain

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		security/qtkeychain,qt6 \
		textproc/ktextaddons \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/libksieve>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
