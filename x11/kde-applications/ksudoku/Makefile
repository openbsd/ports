COMMENT =	sudoku game
DISTNAME =	ksudoku-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/ksudoku

WANTLIB += ${COMPILER_LIBCXX} GL GLU KF5Archive KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KDEGames KF5KIOCore KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

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
