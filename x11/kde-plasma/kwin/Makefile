COMMENT =	window manager for KDE Plasma Desktops
DISTNAME =	kwin-${VERSION}
REVISION =	1

SHARED_LIBS +=  kcmkwincommon             0.0 # 0.0
SHARED_LIBS +=  kwin                      0.0 # 0.0
SHARED_LIBS +=  kwineffects               0.0 # 0.0
SHARED_LIBS +=  kwinglutils               0.0 # 0.0
SHARED_LIBS +=  kwinxrenderutils          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE KF5Activities KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5GlobalAccelPrivate KF5I18n KF5IdleTime
WANTLIB += KF5KCMUtils KF5KCMUtilsCore KF5NewStuff KF5NewStuffCore
WANTLIB += KF5NewStuffWidgets KF5Notifications KF5Package KF5Plasma
WANTLIB += KF5QuickAddons KF5Runner KF5Service KF5WaylandClient
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Widgets Qt5X11Extras Qt5Xml SM X11 X11-xcb
WANTLIB += Xext Xi c drm epoxy fontconfig freetype gbm glib-2.0
WANTLIB += gthread-2.0 input intl kdecorations2 kdecorations2private
WANTLIB += lcms2 m qaccessibilityclient-qt5 udev wayland-client
WANTLIB += wayland-server xcb xcb-composite xcb-cursor xcb-damage
WANTLIB += xcb-glx xcb-icccm xcb-keysyms xcb-present xcb-randr
WANTLIB += xcb-render xcb-shape xcb-shm xcb-sync xcb-xfixes xcb-xinerama
WANTLIB += xcb-xkb xcvt xkbcommon xkbcommon-x11 z

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_ICON_CACHE =	Yes
MODKDE5_DOCS =		Yes

MODULES +=	lang/python

BUILD_DEPENDS =	x11/kde-plasma/breeze>=${VERSION} \
		x11/kde-plasma/kscreenlocker>=${VERSION} \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols \
		wayland/xwayland \
		misc/hwdata

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/hwdata \
		x11/kde-plasma/breeze>=${VERSION}

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
		devel/kf5/kidletime \
		devel/kf5/krunner \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		graphics/lcms2 \
		multimedia/pipewire/pipewire,-libs \
		sysutils/libudev-openbsd \
		wayland/libinput-openbsd \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/libqaccessibilityclient \
		x11/qt5/qtdeclarative

CXXFLAGS +=		-I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib
CONFIGURE_ENV +=	KFWaylandServer_DIR=${MODQT5_LIBDIR}/cmake

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX Need more work
CONFIGURE_ARGS =	-DKWIN_BUILD_SCREENLOCKER=OFF

TEST_ENV +=		XDG_RUNTIME_DIR=${WRKBUILD}

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKDIR}

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		 ${PREFIX}/share/kconf_update/

.include <bsd.port.mk>
