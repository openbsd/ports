USE_WXNEEDED =	Yes

COMMENT =	desktop sync client for Nextcloud

V =		3.14.3
DISTNAME =	nextcloudclient-${V}

GH_ACCOUNT =	nextcloud
GH_PROJECT =	desktop
GH_TAGNAME =	v${V}

CATEGORIES =	net

HOMEPAGE =	https://nextcloud.com

SHARED_LIBS +=  nextcloudsync             21.0  # 3.14.3
SHARED_LIBS +=  nextcloud_csync           10.0  # 3.14.1
SHARED_LIBS +=  nextcloudsync_vfs_suffix  4.0   # 3.14.1

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF6Archive KF6GuiAddons Qt6Concurrent
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6QuickWidgets Qt6Sql Qt6Svg Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6WebSockets Qt6Widgets
WANTLIB += Qt6Xml c cloudproviders crypto gio-2.0 GL glib-2.0 gobject-2.0
WANTLIB += intl m qt6keychain sqlite3 ssl xkbcommon z

WANTLIB += lib/inotify/inotify


MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/gettext,-tools

# for converting svg icons to png
BUILD_DEPENDS +=	x11/gnome/librsvg

# FindInotify.cmake
BUILD_DEPENDS +=	devel/kf6/extra-cmake-modules

# for tests, but detected during configure
BUILD_DEPENDS +=	devel/cmocka

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		databases/sqlite3 \
			devel/kf6/karchive \
			devel/kf6/kguiaddons \
			devel/libinotify \
			security/qtkeychain,qt6 \
			x11/gnome/libcloudproviders \
			x11/qt6/qt5compat \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine \
			x11/qt6/qtwebsockets

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
