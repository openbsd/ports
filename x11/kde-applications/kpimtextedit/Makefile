COMMENT =	textedit with PIM-specific features
DISTNAME =	kpimtextedit-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6TextEdit             1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Service KF6Solid KF6SonnetCore KF6SonnetUi
WANTLIB += KF6SyntaxHighlighting KF6TextCustomEditor KF6TextEditTextToSpeech
WANTLIB += KF6TextEmoticonsCore KF6TextEmoticonsWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += Qt6Xml m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/kf6/ktextwidgets \
		devel/kf6/kiconthemes \
		devel/kf6/kitemviews

RUN_DEPENDS =	devel/kf6/ktextwidgets \
		devel/kf6/kiconthemes \
		devel/kf6/kitemviews

LIB_DEPENDS =	devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kguiaddons \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		textproc/ktextaddons

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
