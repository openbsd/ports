COMMENT =	3-D Game based on Rubiks Cube
DISTNAME =	kubrick-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kubrick

WANTLIB += ${COMPILER_LIBCXX} GL GLU KDEGames6 KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6I18n KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Qml Qt6Svg Qt6Widgets Qt6Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/ki18n \
		devel/kf6/kcrash \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kxmlgui \
		devel/kf6/kdbusaddons \
		devel/kf6/kwidgetsaddons \
		x11/qt6/qtsvg \
		x11/qt6/qtdeclarative \
		x11/kde-applications/libkdegames>=${MODKDE_VERSION}

.include <bsd.port.mk>
