# $OpenBSD: Makefile,v 1.3 2019/03/24 11:57:03 rsadowski Exp $

COMMENT =	sudoku game
DISTNAME =	ksudoku-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/ksudoku


WANTLIB += ${COMPILER_LIBCXX} GL GLU KF5Archive KF5Auth KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KDEGames KF5KDEGamesPrivate KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=x11/qt5/qtquickcontrols \
		devel/kf5/kiconthemes
RUN_DEPENDS +=	x11/qt5/qtquickcontrols \
		devel/kf5/kiconthemes

LIB_DEPENDS +=	devel/kf5/kauth \
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
