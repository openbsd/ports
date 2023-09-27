COMMENT =	various text handling addons

V =		1.4.1
DISTNAME =	ktextaddons-${V}

SHARED_LIBS +=  KF5TextAddonsWidgets          0.1 # 0.0
SHARED_LIBS +=  KF5TextAutoCorrectionCore     0.0 # 0.0
SHARED_LIBS +=  KF5TextAutoCorrectionWidgets  1.0 # 0.0
SHARED_LIBS +=  KF5TextEditTextToSpeech       0.0 # 0.0
SHARED_LIBS +=  KF5TextEmoticonsCore          0.0 # 0.0
SHARED_LIBS +=  KF5TextEmoticonsWidgets       0.0 # 0.0
SHARED_LIBS +=  KF5TextGrammarCheck           0.0 # 0.0
SHARED_LIBS +=  KF5TextTranslator             0.0 # 0.0
SHARED_LIBS +=  KF5TextUtils                  0.0 # 0.0

CATEGORIES =	textproc devel

HOMEPAGE =	https://invent.kde.org/libraries/ktextaddons

SITES =		${SITE_KDE:=stable/ktextaddons/}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5TextToSpeech Qt5Widgets Qt5Xml
WANTLIB += m qt5keychain

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
		security/qtkeychain \
		x11/qt5/qtspeech

TEST_IS_INTERACTIVE =        X11

.include <bsd.port.mk>
