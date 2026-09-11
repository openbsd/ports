COMMENT =	mail sieve editor
DISTNAME =	pim-sieve-editor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  sieveeditor       5.1 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6ColorScheme KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6IconThemes KF6KIOCore KF6Mime KF6Service KF6SonnetUi
WANTLIB += KF6SyntaxHighlighting KF6TextAddonsWidgets KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextAutoGenerateText
WANTLIB += KF6TextAutoGenerateTextMcpProtocolCore KF6TextCustomEditor
WANTLIB += KF6UserFeedbackCore KF6UserFeedbackWidgets KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPim6KManageSieve KPim6KSieve
WANTLIB += KPim6KSieveCore KPim6KSieveUi KPim6MailTransport KPim6PimCommon
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Sql Qt6Widgets
WANTLIB += Qt6Xml X11 c m qt6keychain

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

RUN_DEPENDS =	x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kguiaddons \
		devel/kf6/kmime \
		devel/kf6/kservice \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/kiconthemes \
		devel/kf6/kwindowsystem \
		security/qtkeychain,qt6 \
		textproc/ktextaddons \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/libksieve>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
