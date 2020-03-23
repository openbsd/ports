# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:10 rsadowski Exp $

COMMENT =		text editing widgets for KDE
DISTNAME =		ktextwidgets-${VERSION}

SHARED_LIBS =		KF5TextWidgets		5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5SonnetCore KF5SonnetUi KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5TextToSpeech Qt5Widgets Qt5Xml m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/sonnet>=${MODKF5_VERSION} \
		x11/qt5/qtspeech

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
