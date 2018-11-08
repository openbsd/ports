# $OpenBSD: Makefile,v 1.1.1.1 2018/11/08 22:27:56 rsadowski Exp $

COMMENT =	common code and data for many KDE games
DISTNAME =	libkdegames-${VERSION}
PKGNAME =	libkdegames-kf5-${VERSION}
CATEGORIES =	devel games

KDE5 =		Yes

SHARED_LIBS +=  KF5KDEGames               0.0 # 7.0
SHARED_LIBS +=  KF5KDEGamesPrivate        0.0 # 1.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DNSSD KF5Declarative KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Package KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += m openal sndfile

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdbusaddons \
		devel/kf5/kitemviews \
		devel/kf5/kglobalaccel \
		devel/kf5/kbookmarks \
		devel/kf5/kcrash \
		devel/kf5/ktextwidgets

RUN_DEPENDS =	devel/kf5/kbookmarks \
		devel/kf5/kcrash

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
