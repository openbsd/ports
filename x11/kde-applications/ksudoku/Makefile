# $OpenBSD: Makefile,v 1.4 2020/03/23 18:01:25 rsadowski Exp $

COMMENT =	sudoku game
DISTNAME =	ksudoku-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/ksudoku

WANTLIB += ${COMPILER_LIBCXX} GL GLU KF5Archive KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5GuiAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KDEGames KF5KDEGamesPrivate
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		devel/kf5/kiconthemes
RUN_DEPENDS =	x11/qt5/qtquickcontrols \
		devel/kf5/kiconthemes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtsvg \
		x11/qt5/qtdeclarative \
		x11/kde-applications/libkdegames

.include <bsd.port.mk>
