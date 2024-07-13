COMMENT =	memory enhancement game
DISTNAME =	blinken-${VERSION}
CATEGORIES =	games education

HOMEPAGE =	https://www.kde.org/applications/education/blinken/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6Widgets
WANTLIB += Qt6Xml c m phonon4qt6

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

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
		multimedia/phonon,qt6 \
		x11/qt6/qtsvg

.include <bsd.port.mk>
