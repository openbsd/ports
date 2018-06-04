# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		text editing widgets for KDE
DISTNAME =		ktextwidgets-${VERSION}

SHARED_LIBS =		KF5TextWidgets		4.1

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5Service KF5SonnetCore KF5SonnetUi
WANTLIB += KF5WidgetsAddons KF5WindowSystem Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/sonnet

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=Yes

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
