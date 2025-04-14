COMMENT =	picture game for children
DISTNAME =	ktuberling-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/ktuberling

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6KIOCore
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6PrintSupport Qt6Qml Qt6Svg Qt6SvgWidgets
WANTLIB += Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/solid

RUN_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/solid

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg

.include <bsd.port.mk>
