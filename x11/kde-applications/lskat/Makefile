COMMENT =	Lieutnant Skat - from German Offiziersskat
DISTNAME =	lskat-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/lskat

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6I18n KF6WidgetsAddons KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Svg Qt6Widgets
WANTLIB += Qt6Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/ki18n \
		devel/kf6/kcrash \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kxmlgui \
		devel/kf6/kguiaddons \
		devel/kf6/kwidgetsaddons \
		x11/qt6/qtsvg \
		x11/qt6/qtdeclarative \
		x11/kde-applications/libkdegames>=${MODKDE_VERSION}

.include <bsd.port.mk>
