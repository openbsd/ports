COMMENT =	various text handling addons

DISTNAME =	ktextaddons-2.2.0

SHARED_LIBS +=  KF6TextAddonsWidgets      3.0 # 0.0
SHARED_LIBS +=  KF6TextAutoCorrectionCore 0.1 # 0.0
SHARED_LIBS +=  KF6TextAutoCorrectionWidgets 1.0 # 0.0
SHARED_LIBS +=  KF6TextCustomEditor       0.2 # 0.0
SHARED_LIBS +=  KF6TextEditTextToSpeech   1.1 # 0.0
SHARED_LIBS +=  KF6TextEmoticonsCore      4.0 # 0.0
SHARED_LIBS +=  KF6TextEmoticonsWidgets   1.0 # 0.0
SHARED_LIBS +=  KF6TextGrammarCheck       0.1 # 0.0
SHARED_LIBS +=  KF6TextTranslator         1.1 # 0.0
SHARED_LIBS +=  KF6TextUtils              0.2 # 0.0
SHARED_LIBS +=	KF6TextAutoGenerateText   9.0 # 0.0
SHARED_LIBS +=	KF6TextSpeechToText       0.1 # 0.0
SHARED_LIBS +=	textautogenerateollama    4.1 # 0.0
SHARED_LIBS +=	textautogenerategenericnetwork 5.0 # 0.0
SHARED_LIBS +=	textutils-cmark-rc-copy   0.0 # 0.0
SHARED_LIBS +=	textautogenerateollamacloud 0.0 # 0.0
SHARED_LIBS +=	textautogenerateollamacommon 2.0 # 0.0
SHARED_LIBS +=	textautogenerateollamaonline 0.0 # 0.0
SHARED_LIBS +=	KF6TextAutoGenerateTextMcpProtocolCore 2.0 # 0.0
SHARED_LIBS +=	KF6TextAutoGenerateTextMcpProtocolWidgets 0.1 # 0.0
SHARED_LIBS +=	mcpprotocolclientplugin   0.0 # 0.0
SHARED_LIBS +=	mcpprotocolserverplugin   1.0 # 0.0
SHARED_LIBS +=	textautogeneratellamacpp  0.0 # 0.0
SHARED_LIBS +=	textautogeneratelmstudio  1.0 # 0.0
SHARED_LIBS +=	textautogenerateplugincommon 1.0 # 0.0
SHARED_LIBS +=	kokoroinstalltexttospeech 0.0 # 0.0
SHARED_LIBS +=	kokorotexttospeech        0.0 # 0.0
SHARED_LIBS +=	speechtotextwhisper       0.0 # 0.0
SHARED_LIBS +=	speechtotextwhisperinstall 0.0 # 0.0

CATEGORIES =	textproc devel

HOMEPAGE =	https://invent.kde.org/libraries/ktextaddons

SITES =		${SITE_KDE:=stable/ktextaddons/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6SonnetCore KF6SonnetUi KF6SyntaxHighlighting
WANTLIB += KF6TextWidgets KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Multimedia Qt6MultimediaWidgets Qt6Network Qt6Sql
WANTLIB += Qt6TextToSpeech Qt6Widgets Qt6Xml m qt6keychain

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/ktextwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kbookmarks \
		devel/kf6/kiconthemes \
		devel/kf6/solid \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kitemviews \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		security/qtkeychain,qt6>=0.15 \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

TEST_IS_INTERACTIVE =        X11

.include <bsd.port.mk>
