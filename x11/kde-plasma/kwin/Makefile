COMMENT =	window manager for KDE Plasma Desktops
DISTNAME =	kwin-${VERSION}

SHARED_LIBS +=  kcmkwincommon             0.0 # 0.0
SHARED_LIBS +=  kwin                      0.0 # 0.0
SHARED_LIBS +=  kwineffects               0.0 # 0.0
SHARED_LIBS +=  kwinglutils               0.0 # 0.0
SHARED_LIBS +=  kwinxrenderutils          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE KF5Activities KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5GlobalAccelPrivate KF5I18n KF5IdleTime
WANTLIB += KF5ItemViews KF5KCMUtils KF5KCMUtilsCore KF5NewStuff
WANTLIB += KF5NewStuffCore KF5NewStuffWidgets KF5Notifications
WANTLIB += KF5Package KF5Plasma KF5QuickAddons KF5Runner KF5Service
WANTLIB += KF5WaylandClient KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KScreenLocker Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 X11-xcb Xext Xi c drm epoxy
WANTLIB += fontconfig freetype gbm glib-2.0 gthread-2.0 input
WANTLIB += kdecorations2 kdecorations2private lcms2 m qaccessibilityclient-qt5
WANTLIB += udev wayland-client wayland-server xcb xcb-composite
WANTLIB += xcb-cursor xcb-damage xcb-glx xcb-icccm xcb-keysyms
WANTLIB += xcb-present xcb-randr xcb-render xcb-shape xcb-shm
WANTLIB += xcb-sync xcb-xfixes xcb-xinerama xcb-xkb xcvt xkbcommon
WANTLIB += xkbcommon-x11 z

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_ICON_CACHE =	Yes
MODKDE5_DOCS =		Yes

MODULES +=	lang/python

BUILD_DEPENDS =	x11/kde-plasma/breeze \
		wayland/plasma-wayland-protocols \
		wayland/xwayland \
		misc/hwdata

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/hwdata \
		x11/kde-plasma/breeze

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/krunner \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		graphics/lcms2 \
		sysutils/libudev-openbsd \
		wayland/libinput-openbsd \
		x11/kde-plasma/kdecoration \
		x11/kde-plasma/kscreenlocker \
		x11/libqaccessibilityclient \
		x11/qt5/qtdeclarative

CXXFLAGS +=		-I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib
CONFIGURE_ENV +=	KFWaylandServer_DIR=${MODQT5_LIBDIR}/cmake

# Mostly useless tests
# QVERIFY(waylandServer()->init(s_socketName));
CONFIGURE_ARGS +=	-DBUILD_TESTING=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_ENV +=		XDG_RUNTIME_DIR=${WRKBUILD}

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		 ${PREFIX}/share/kconf_update/

.include <bsd.port.mk>
