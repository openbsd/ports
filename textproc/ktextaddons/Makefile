COMMENT =	various text handling addons

DISTNAME =	ktextaddons-1.5.4

SHARED_LIBS +=  KF6TextAddonsWidgets      0.0 # 0.0
SHARED_LIBS +=  KF6TextAutoCorrectionCore 0.0 # 0.0
SHARED_LIBS +=  KF6TextAutoCorrectionWidgets 0.0 # 0.0
SHARED_LIBS +=  KF6TextCustomEditor       0.0 # 0.0
SHARED_LIBS +=  KF6TextEditTextToSpeech   0.0 # 0.0
SHARED_LIBS +=  KF6TextEmoticonsCore      0.0 # 0.0
SHARED_LIBS +=  KF6TextEmoticonsWidgets   0.0 # 0.0
SHARED_LIBS +=  KF6TextGrammarCheck       0.0 # 0.0
SHARED_LIBS +=  KF6TextTranslator         0.0 # 0.0
SHARED_LIBS +=  KF6TextUtils              0.0 # 0.0

CATEGORIES =	textproc devel

HOMEPAGE =	https://invent.kde.org/libraries/ktextaddons

SITES =		${SITE_KDE:=stable/ktextaddons/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6SonnetCore KF6SonnetUi KF6SyntaxHighlighting
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6TextToSpeech Qt6Widgets Qt6Xml m qt6keychain

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		security/qtkeychain,qt6 \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

TEST_IS_INTERACTIVE =        X11

.include <bsd.port.mk>
