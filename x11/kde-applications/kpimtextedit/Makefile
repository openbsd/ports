# $OpenBSD: Makefile,v 1.15 2021/09/10 08:43:56 rsadowski Exp $

COMMENT =	textedit with PIM-specific features
DISTNAME =	kpimtextedit-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5PimTextEdit            4.1 # 5.6

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5SonnetCore KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5TextToSpeech Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes


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
		x11/qt5/qtspeech

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
