COMMENT =	eBook reader
DISTNAME =	arianna-${VERSION}
CATEGORIES =	audio
REVISION =	0

HOMEPAGE =	https://apps.kde.org/arianna/

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Baloo KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6FileMetaData KF6I18n KF6WindowSystem Kirigami KirigamiPlatform
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6HttpServer Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Sql
WANTLIB += Qt6Svg Qt6WebChannel Qt6WebChannelQuick Qt6WebEngineCore
WANTLIB += Qt6WebEngineQuick Qt6WebSockets Qt6Widgets Qt6Xml X11
WANTLIB += c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style

RUN_DEPENDS =	graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style

LIB_DEPENDS =	devel/kf6/baloo \
		devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kirigami \
		devel/kf6/kwindowsystem \
		x11/qt6/qtdeclarative \
		x11/qt6/qthttpserver \
		x11/qt6/qtpositioning \
		x11/qt6/qtsvg \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/qt6/qtwebsockets

.include <bsd.port.mk>
