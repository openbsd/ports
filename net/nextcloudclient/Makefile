USE_WXNEEDED =	Yes

COMMENT =	desktop sync client for Nextcloud

V =		3.13.2
DISTNAME =	nextcloudclient-${V}
REVISION =	0

GH_ACCOUNT =	nextcloud
GH_PROJECT =	desktop
GH_TAGNAME =	v${V}

CATEGORIES =	net

HOMEPAGE =	https://nextcloud.com

SHARED_LIBS +=  nextcloudsync             19.0  # 3.13.2
SHARED_LIBS +=  nextcloud_csync           9.0   # 3.13.2
SHARED_LIBS +=  nextcloudsync_vfs_suffix  3.0   # 3.13.2

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5GuiAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Svg Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5WebSockets Qt5Widgets Qt5Xml c cloudproviders crypto
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl m qt5keychain sqlite3
WANTLIB += ssl z

WANTLIB += lib/inotify/inotify


MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gettext,-tools

# for converting svg icons to png
BUILD_DEPENDS +=	x11/gnome/librsvg

# FindInotify.cmake
BUILD_DEPENDS +=	devel/kf6/extra-cmake-modules

# for tests, but detected during configure
BUILD_DEPENDS +=	devel/cmocka

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic \
			x11/qt5/qtgraphicaleffects \
			x11/qt5/qtquickcontrols

LIB_DEPENDS =		databases/sqlite3 \
			devel/kf5/karchive \
			devel/kf5/kguiaddons \
			devel/libinotify \
			security/qtkeychain \
			x11/gnome/libcloudproviders \
			x11/qt5/qtdeclarative \
			x11/qt5/qtlocation \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtsvg \
			x11/qt5/qtwebchannel \
			x11/qt5/qtwebengine \
			x11/qt5/qtwebsockets

CONFIGURE_ARGS =	-DBUILD_SHELL_INTEGRATION_NAUTILUS=OFF \
			-DBUILD_SHELL_INTEGRATION_DOLPHIN=OFF \
			-DBUILD_SHELL_INTEGRATION=OFF \
			-DUNIT_TESTING=ON \
			-DWITH_CRASHREPORTER=OFF

# Disable Doxygen
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# Disable SharedMime
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SharedMimeInfo=ON

CONFIGURE_ARGS +=	-DCMAKE_MODULE_PATH=${LOCALBASE}/share/ECM/find-modules

# Do not install under /etc/Nextcloud
CONFIGURE_ARGS +=	-DSYSCONF_INSTALL_DIR=${SYSCONFDIR}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_RPATH=${LOCALBASE}/lib/inotify

CXXFLAGS +=		-I${LOCALBASE}/include/inotify -I${LOCALBASE}/include/qtkeychain
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib/inotify

pre-configure:
	rm ${WRKSRC}/cmake/modules/FindInotify.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Nextcloud/
	mv ${WRKINST}/etc/Nextcloud ${PREFIX}/share/examples/

.include <bsd.port.mk>
