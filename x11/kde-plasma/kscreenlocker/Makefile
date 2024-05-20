COMMENT =	library for secure lock screen architecture
DISTNAME =	kscreenlocker-${VERSION}

SHARED_LIBS +=  KScreenLocker         1.0 # 5.22.5

MODKDE5_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigQml KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GlobalAccel KF6I18n KF6IdleTime KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6Notifications KF6Package
WANTLIB += KF6ScreenDpms KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += LayerShellQtInterface Plasma PlasmaQuick Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6Widgets Qt6Xml X11 Xext Xi c m pam wayland-client
WANTLIB += wayland-server xcb xcb-keysyms xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils

BUILD_DEPENDS =	wayland/wayland-protocols \
		wayland/plasma-wayland-protocols \
		x11/kde-plasma/kscreen>=${VERSION}

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kidletime \
		devel/kf6/kio \
		devel/kf6/knotifications \
		devel/kf6/kpackage \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		security/openpam \
		wayland/wayland \
		x11/kde-plasma/layer-shell-qt>=${VERSION} \
		x11/kde-plasma/libkscreen>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

CFLAGS +=	-I${LOCALBASE}/include/
CXXFLAGS +=	-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
