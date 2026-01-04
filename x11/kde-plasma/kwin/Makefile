COMMENT =		Wayland window manager for KDE Plasma Desktops
DISTNAME =		kwin-${VERSION}
REVISION =		0

SHARED_LIBS +=  kcmkwincommon             1.0 # 0.0
SHARED_LIBS +=  kwin                      1.0 # 0.0
SHARED_LIBS +=  kwineffects               1.0 # 0.0
SHARED_LIBS +=  kwinglutils               1.0 # 0.0
SHARED_LIBS +=  kwinxrenderutils          1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE KF6Attica KF6AuthCore
WANTLIB += KF6ColorScheme KF6ConfigCore KF6ConfigGui KF6ConfigQml
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6GlobalAccel KF6GuiAddons KF6I18n KF6I18nQml KF6IdleTime
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Notifications KF6Package KF6Service
WANTLIB += KF6Svg KF6WidgetsAddons KF6WindowSystem KF6XmlGui KGlobalAccelD
WANTLIB += KScreenLocker KWaylandClient PlasmaActivities Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Sensors Qt6Svg Qt6UiTools Qt6WaylandClient Qt6Widgets
WANTLIB += Qt6Xml SM X11 Xext c canberra display-info drm eis
WANTLIB += epoll-shim epoxy fontconfig freetype gbm input kdecorations3
WANTLIB += kdecorations3private lcms2 m pipewire-0.3 qaccessibilityclient-qt6
WANTLIB += udev wayland-client wayland-cursor wayland-server xcb
WANTLIB += xcb-composite xcb-cursor xcb-dri3 xcb-icccm xcb-keysyms
WANTLIB += xcb-present xcb-randr xcb-render xcb-res xcb-shape
WANTLIB += xcb-shm xcb-sync xcb-xfixes xcb-xinerama xcb-xinput
WANTLIB += xcvt xkbcommon

MODKDE_TRANSLATIONS =	Yes
MODKDE_ICON_CACHE =	Yes
MODKDE_DOCS =		Yes

MODULES +=	lang/python

BUILD_DEPENDS =	devel/kf6/kdeclarative \
		misc/hwdata \
		x11/kde-plasma/aurorae>=${VERSION} \
		x11/kde-plasma/breeze>=${VERSION} \
		x11/kde-plasma/kpipewire>=${VERSION} \
		x11/kde-plasma/kscreenlocker>=${VERSION}

# wayland includes and protocols
BUILD_DEPENDS +=	wayland/libinput-openbsd \
			wayland/plasma-wayland-protocols \
			wayland/wayland-protocols \
			wayland/xwayland

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/hwdata \
		wayland/xwayland \
		x11/kde-plasma/aurorae>=${VERSION} \
		x11/kde-plasma/breeze>=${VERSION} \
		x11/kde-plasma/kpipewire>=${VERSION} \
		x11/kde-plasma/kwin-x11>=${VERSION}

LIB_DEPENDS =	audio/libcanberra \
		devel/epoll-shim \
		devel/kf6/attica \
		devel/kf6/kauth \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kidletime \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/kpackage \
		devel/kf6/kservice \
		devel/kf6/ksvg \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		graphics/lcms2 \
		multimedia/pipewire/pipewire,-libs \
		sysutils/libdisplay-info \
		sysutils/libudev-openbsd \
		wayland/libei \
		wayland/libinput-openbsd \
		wayland/wayland \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/kde-plasma/kglobalacceld>=${VERSION} \
		x11/kde-plasma/kwayland>=${VERSION} \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/kde-plasma/knighttime>=${VERSION} \
		x11/kde-plasma/kscreenlocker>=${VERSION} \
		x11/libqaccessibilityclient \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsensors \
		x11/qt6/qtsvg \
		x11/qt6/qttools \
		x11/xkbcommon

CXXFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include/libepoll-shim/
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib -lepoll-shim
CONFIGURE_ENV +=	KFWaylandServer_DIR=${MODQT6_LIBDIR}/cmake

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_ENV +=		XDG_RUNTIME_DIR=${WRKBUILD}

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
