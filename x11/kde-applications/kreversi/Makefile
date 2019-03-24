# $OpenBSD: Makefile,v 1.5 2019/03/24 11:57:02 rsadowski Exp $

COMMENT =	reversi board game
DISTNAME =	kreversi-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/kreversi


WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5Declarative KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KDEGames KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Package KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=x11/qt5/qtquickcontrols
RUN_DEPENDS +=	x11/qt5/qtquickcontrols

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		x11/kde-applications/libkdegames \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg

.include <bsd.port.mk>
