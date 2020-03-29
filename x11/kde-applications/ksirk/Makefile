# $OpenBSD: Makefile,v 1.7 2020/03/29 16:44:09 rsadowski Exp $

COMMENT =	world domination strategy game
DISTNAME =	ksirk-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/ksirk

SHARED_LIBS +=  iris_ksirk                1.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5IconThemes KF5KDEGames
WANTLIB += KF5KDEGamesPrivate KF5KIOCore KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Service KF5Wallet KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml c m qca-qt5 z

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes
MODKDE5_DESKTOP_FILE = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS =	x11/qt5/qtquickcontrols
RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/qca-qt5 \
		x11/kde-applications/libkdegames \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg

.include <bsd.port.mk>
