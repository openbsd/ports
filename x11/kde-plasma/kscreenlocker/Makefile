COMMENT =	library for secure lock screen architecture
DISTNAME =	kscreenlocker-${VERSION}

SHARED_LIBS +=  KScreenLocker         0.0 # 5.22.5

MODKDE5_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigQml KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5Declarative KF5GlobalAccel KF5I18n KF5IdleTime
WANTLIB += KF5KCMUtils KF5KIOCore KF5Notifications KF5Package
WANTLIB += KF5QuickAddons KF5ScreenDpms KF5Service KF5WaylandClient
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui LayerShellQtInterface
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += X11 Xext Xi c m pam wayland-client wayland-server xcb
WANTLIB += xcb-keysyms

RUN_DEPENDS =	devel/desktop-file-utils

BUILD_DEPENDS =	wayland/wayland-protocols \
		x11/kde-plasma/kscreen

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcmutils \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kidletime \
		devel/kf5/kpackage \
		devel/kf5/kwayland \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		security/openpam \
		wayland/wayland \
		x11/kde-plasma/libkscreen \
		x11/kde-plasma/layer-shell-qt \
		x11/qt5/qtdeclarative \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

CFLAGS +=	-I${LOCALBASE}/include/
CXXFLAGS +=	-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
