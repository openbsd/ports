COMMENT =	Tron-like game
DISTNAME =	ksnakeduel-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/ksnakeduel

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5GuiAddons KF5I18n KF5KDEGames
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	x11/qt5/qtquickcontrols
RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/ki18n \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kguiaddons \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtdeclarative\
		x11/qt5/qtsvg \
		x11/kde-applications/libkdegames>=${MODKDE_VERSION}

.include <bsd.port.mk>
