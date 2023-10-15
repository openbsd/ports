COMMENT =	various text handling addons

V =		1.5.2
DISTNAME =	ktextaddons-${V}

SHARED_LIBS +=  KF5TextAddonsWidgets          0.2 # 0.0
SHARED_LIBS +=  KF5TextAutoCorrectionCore     0.0 # 0.0
SHARED_LIBS +=  KF5TextAutoCorrectionWidgets  1.0 # 0.0
SHARED_LIBS +=  KF5TextEditTextToSpeech       1.0 # 0.0
SHARED_LIBS +=  KF5TextEmoticonsCore          0.0 # 0.0
SHARED_LIBS +=  KF5TextEmoticonsWidgets       0.0 # 0.0
SHARED_LIBS +=  KF5TextGrammarCheck           0.0 # 0.0
SHARED_LIBS +=  KF5TextTranslator             1.0 # 0.0
SHARED_LIBS +=  KF5TextUtils                  0.1 # 0.0
SHARED_LIBS +=  KF5TextCustomEditor           0.0 # 0.0

CATEGORIES =	textproc devel

HOMEPAGE =	https://invent.kde.org/libraries/ktextaddons

SITES =		${SITE_KDE:=stable/ktextaddons/}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5SonnetCore KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5TextToSpeech Qt5Widgets Qt5Xml X11 m qt5keychain

WANTLIB += lib/inotify/inotify



MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/libinotify \
		devel/kf5/kcompletion \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		security/qtkeychain \
		x11/qt5/qtspeech

TEST_IS_INTERACTIVE =        X11

.include <bsd.port.mk>
