# $OpenBSD: Makefile,v 1.26 2021/12/02 06:54:02 rsadowski Exp $ #

COMMENT =	desktop sync client for Nextcloud

V =		3.4.0
DISTNAME =	nextcloudclient-${V}

GH_ACCOUNT =	nextcloud
GH_PROJECT =	desktop
GH_TAGNAME =	v${V}

CATEGORIES =	net

HOMEPAGE =	https://nextcloud.com

SHARED_LIBS +=  nextcloudsync    1.0 # 3.4.0
SHARED_LIBS +=  nextcloud_csync  1.0 # 3.4.0

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickControls2 Qt5Svg Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5WebSockets Qt5Widgets Qt5Xml
WANTLIB += c crypto gio-2.0 glib-2.0 gobject-2.0 intl m qt5keychain
WANTLIB += secret-1 sqlite3 ssl z lib/inotify/inotify

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gettext,-tools

# Generate png icons with inkscape
# https://github.com/nextcloud/desktop/pull/3466
BUILD_DEPENDS +=	graphics/inkscape

# Needs for test at build-time
BUILD_DEPENDS +=	devel/cmocka

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic \
			x11/qt5/qtgraphicaleffects

LIB_DEPENDS =		databases/sqlite3 \
			devel/libinotify \
			security/qtkeychain \
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

# Do not install under /etc/Nextcloud
CONFIGURE_ARGS +=	-DSYSCONF_INSTALL_DIR=${SYSCONFDIR}

CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} \
				-I${LOCALBASE}/include/inotify \
				-I${LOCALBASE}/include/qtkeychain \
				-I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} \
				-I${LOCALBASE}/include/inotify \
				-I${LOCALBASE}/include/qtkeychain \
				-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
				-L${LOCALBASE}/lib/inotify \
				-L${LOCALBASE}/lib \
				-linotify \
				-Wl,-rpath=${LOCALBASE}/lib/inotify"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Nextcloud/
	mv ${WRKINST}/etc/Nextcloud ${PREFIX}/share/examples/

.include <bsd.port.mk>
