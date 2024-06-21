COMMENT =	Plasma library and runtime components
DISTNAME =	libplasma-${VERSION}
REVISION =	0

SHARED_LIBS +=  Plasma                    0.0 # 0.0
SHARED_LIBS +=  PlasmaQuick               0.0 # 0.0

MODKDE5_TRANSLATIONS = Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6Archive KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigQml
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6GlobalAccel KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6JobWidgets KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Package KF6Service KF6Solid KF6Svg
WANTLIB += KF6WidgetsAddons KF6WindowSystem KirigamiPlatform PlasmaActivities
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6Svg Qt6WaylandClient Qt6Widgets
WANTLIB += SM X11 Xext m wayland-client wayland-cursor xcb xcb-composite
WANTLIB += xcb-damage xcb-render xcb-shape xcb-xfixes xkbcommon

BUILD_DEPENDS =	archivers/gtar \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kirigami \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kpackage \
		devel/kf6/kservice \
		devel/kf6/ksvg \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/solid \
		wayland/wayland \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/qt6/qtwayland \
		x11/xkbcommon

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
