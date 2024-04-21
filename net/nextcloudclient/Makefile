USE_WXNEEDED =	Yes

COMMENT =	desktop sync client for Nextcloud

V =		3.12.2
DISTNAME =	nextcloudclient-${V}

GH_ACCOUNT =	nextcloud
GH_PROJECT =	desktop
GH_TAGNAME =	v${V}

CATEGORIES =	net

HOMEPAGE =	https://nextcloud.com

SHARED_LIBS +=  nextcloudsync             18.0  # 3.12.2
SHARED_LIBS +=  nextcloud_csync           8.2   # 3.12.2
SHARED_LIBS +=  nextcloudsync_vfs_suffix  2.0   # 3.10.2

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} lib/inotify/inotify KF5Archive
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5WebSockets Qt5Widgets Qt5Xml c crypto m qt5keychain
WANTLIB += cloudproviders gio-2.0 glib-2.0 gobject-2.0 intl sqlite3 ssl z

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
			devel/libinotify \
			devel/kf5/karchive \
			security/qtkeychain \
			x11/gnome/libcloudproviders \
			x11/qt5/qtsvg \
			x11/qt5/qtquickcontrols2 \
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
