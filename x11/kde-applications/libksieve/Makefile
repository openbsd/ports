COMMENT =	sieve script library
DISTNAME =	libksieve-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6KManageSieve         0.0 # 0.0
SHARED_LIBS +=	KPim6KSieve               0.0 # 0.0
SHARED_LIBS +=	KPim6KSieveCore           2.0 # 0.0
SHARED_LIBS +=	KPim6KSieveUi             0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Mime KF6NewStuffCore
WANTLIB += KF6Service KF6SonnetUi KF6SyntaxHighlighting KF6TextAddonsWidgets
WANTLIB += KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextAutoGenerateText KF6TextAutoGenerateTextMcpProtocolCore
WANTLIB += KF6TextCustomEditor KF6TextEditTextToSpeech KF6TextUtils
WANTLIB += KF6WidgetsAddons KPim6IdentityManagementCore KPim6Libkdepim
WANTLIB += KPim6MailTransport KPim6PimCommon Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Multimedia Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Quick Qt6Sql Qt6TextToSpeech Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets m sasl2

MODKDE_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kmime \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		security/cyrus-sasl2 \
		textproc/ktextaddons \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
