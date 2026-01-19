COMMENT =	library for secure lock screen architecture
DISTNAME =	kscreenlocker-${VERSION}
REVISION =	0

SHARED_LIBS +=  KScreenLocker         1.0 # 5.22.5

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigQml KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GlobalAccel KF6GuiAddons KF6I18n KF6I18nQml
WANTLIB += KF6IdleTime KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6Notifications KF6Package KF6ScreenDpms KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui LayerShellQtInterface Plasma
WANTLIB += PlasmaQuick Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6Quick Qt6Widgets Qt6Xml X11 Xext Xi c m pam
WANTLIB += wayland-client wayland-server xcb xcb-keysyms

RUN_DEPENDS =	devel/desktop-file-utils \
		sysutils/consolekit

BUILD_DEPENDS =	sysutils/consolekit \
		wayland/plasma-wayland-protocols \
		wayland/wayland-protocols \
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
		devel/kf6/kguiaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		security/openpam \
		wayland/wayland \
		x11/kde-plasma/layer-shell-qt>=${VERSION} \
		x11/kde-plasma/libkscreen>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kscreenlocker/etc/pam.d
	${INSTALL_DATA} ${FILESDIR}/kde* \
		${PREFIX}/share/examples/kscreenlocker/etc/pam.d

.include <bsd.port.mk>
