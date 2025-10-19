USE_WXNEEDED =	Yes

COMMENT-main =		desktop sync client for Nextcloud
COMMENT-dolphin=	dolphin nextcloud integration plugin

V =		3.15.3
GH_ACCOUNT =	nextcloud
GH_PROJECT =	desktop
GH_TAGNAME =	v${V}
REVISION-main =	1

DISTNAME =		nextcloudclient-${V}
PKGNAME-main =		nextcloudclient-${V}
PKGNAME-dolphin =	nextcloudclient-dolphin-plugin-${V}

CATEGORIES =	net

HOMEPAGE =	https://nextcloud.com

SHARED_LIBS +=  nextcloudsync             23.0  # 3.15.2
SHARED_LIBS +=  nextcloud_csync           11.0  # 3.15.2
SHARED_LIBS +=  nextcloudsync_vfs_suffix  4.0   # 3.14.1

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} GL KF6Archive KF6GuiAddons Qt6Concurrent
WANTLIB-main += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB-main += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB-main += Qt6QmlWorkerScript Qt6Quick Qt6QuickControls2 Qt6QuickWidgets
WANTLIB-main += Qt6Sql Qt6Svg Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB-main += Qt6WebSockets Qt6Widgets Qt6Xml c cloudproviders crypto
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 intl m qt6keychain sqlite3
WANTLIB-main += ssl xkbcommon z

WANTLIB-dolphin += ${COMPILER_LIBCXX} GL KF6Completion KF6ConfigCore KF6CoreAddons
WANTLIB-dolphin += KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service
WANTLIB-dolphin += KF6Solid KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB-dolphin += Qt6Widgets m

MULTI_PACKAGES =	-main -dolphin
PSEUDO_FLAVORS =	no_dolphin
FLAVOR ?=

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/gettext,-tools

# for converting svg icons to png
BUILD_DEPENDS +=	x11/gnome/librsvg

# FindInotify.cmake
BUILD_DEPENDS +=	devel/kf6/extra-cmake-modules

# for tests, but detected during configure
BUILD_DEPENDS +=	devel/cmocka

RUN_DEPENDS-main =	devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

RUN_DEPENDS-dolphin +=	x11/gtk+4,-guic

LIB_DEPENDS-main =	databases/sqlite3 \
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

LIB_DEPENDS-dolphin =	devel/kf6/kio

CONFIGURE_ARGS =	-DUNIT_TESTING=ON \
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

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-dolphin}
CONFIGURE_ARGS +=	-DBUILD_SHELL_INTEGRATION_DOLPHIN=ON \
			-DBUILD_SHELL_INTEGRATION=ON
.else
CONFIGURE_ARGS +=	-DBUILD_SHELL_INTEGRATION_DOLPHIN=OFF \
			-DBUILD_SHELL_INTEGRATION=OFF
.endif

pre-configure:
	rm ${WRKSRC}/cmake/modules/FindInotify.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Nextcloud/
	mv ${WRKINST}/etc/Nextcloud ${PREFIX}/share/examples/

.include <bsd.port.mk>
