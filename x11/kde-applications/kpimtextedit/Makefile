# $OpenBSD: Makefile,v 1.9 2020/06/03 05:13:42 rsadowski Exp $

COMMENT =	textedit with PIM-specific features
DISTNAME =	kpimtextedit-${VERSION}
CATEGORIES =	devel
REVISION =	1

SHARED_LIBS +=  KF5PimTextEdit            1.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} Grantlee_TextDocument KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5SonnetCore KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5TextToSpeech Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/kf5/ktextwidgets \
		devel/kf5/kdesignerplugin \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/solid \
		x11/qt5/qttools

RUN_DEPENDS =	devel/kf5/ktextwidgets \
		devel/kf5/kdesignerplugin \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/solid \
		x11/qt5/qttools

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		x11/grantlee-qt5 \
		x11/qt5/qtspeech

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
