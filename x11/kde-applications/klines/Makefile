COMMENT =	KDE version of Color Lines game
DISTNAME =	klines-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/klines

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml
WANTLIB += Qt6Widgets Qt6Xml c m

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes
MODKDE_DESKTOP_FILE = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
