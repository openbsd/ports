COMMENT =	KDE app that allows your devices to communicate

DISTNAME =	kdeconnect-kde-${MODKDE_GEAR_VERSION}

SHARED_LIBS +=	kdeconnectcore		7.0 # 1.4
SHARED_LIBS +=	kdeconnectpluginkcm	1.0 # 1.4

CATEGORIES =	net

HOMEPAGE =	https://kdeconnect.kde.org

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6Bookmarks KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6IconThemes KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6People KF6PulseAudioQt KF6Service KF6Solid KF6StatusNotifierItem
WANTLIB += KF6WidgetsAddons KF6WindowSystem Qt6Bluetooth Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6QuickWidgets Qt6WaylandClient
WANTLIB += Qt6Widgets Qt6Xml SM X11 Xext Xtst c crypto dbus-1
WANTLIB += fakekey m wayland-client wayland-cursor xkbcommon

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX =		.tar.xz

MODULES =	x11/kde \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/kirigami \
		devel/kf6/kpackage \
		graphics/kirigami-addons \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/breeze-icons \
		devel/kf6/kirigami \
		devel/kf6/kpackage \
		graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style \
		sysutils/sshfs-fuse \
		sysutils/sshpass \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/pulseaudio-qt \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kcrash \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kpeople \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/solid \
		wayland/wayland \
		x11/dbus \
		x11/libfakekey \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtconnectivity \
		x11/qt6/qtwayland \
		x11/xkbcommon

MODPY_ADJ_FILES =	nautilus-extension/kdeconnect-share.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/sftp/mounter.cpp

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/nautilus-python/extensions

.include <bsd.port.mk>
