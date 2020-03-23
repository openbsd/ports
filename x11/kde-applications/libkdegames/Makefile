# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:27 rsadowski Exp $

COMMENT =	common code and data for many KDE games
DISTNAME =	libkdegames-${VERSION}
PKGNAME =	libkdegames-kf5-${VERSION}
CATEGORIES =	devel games

SHARED_LIBS +=  KF5KDEGames               1.0 # 7.0
SHARED_LIBS +=  KF5KDEGamesPrivate        1.0 # 1.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DNSSD KF5Declarative
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Package KF5Service KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml m openal sndfile

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/kf5/kdbusaddons \
		devel/kf5/kitemviews \
		devel/kf5/kglobalaccel \
		devel/kf5/kbookmarks \
		devel/kf5/kcrash \
		devel/kf5/ktextwidgets

RUN_DEPENDS =	devel/kf5/kbookmarks \
		devel/kf5/kcrash \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/karchive \
		devel/kf5/kdnssd \
		devel/kf5/kdeclarative \
		devel/kf5/kguiaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kxmlgui \
		audio/openal \
		audio/libsndfile

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
