COMMENT =		owncloud sync client

V = 			4.2.0.11670
GRAPHAPI_V = 		1.0.1
DISTNAME =		ownCloud-${V}
PKGNAME =  		owncloudclient-${V}
DISTFILES += 		ownCloud-${V}.tar.xz
DISTFILES.a +=		libre-graph-api-cpp-qt-client-{}v${GRAPHAPI_V}.tar.gz

SHARED_LIBS +=		owncloudsync		9.0
SHARED_LIBS +=		owncloud_csync		3.0
SHARED_LIBS +=		owncloudResources	0.1

CATEGORIES =		net

HOMEPAGE =		https://owncloud.com/desktop-app/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c m qt5keychain sqlite3 z
WANTLIB += ${COMPILER_LIBCXX} lib/inotify/inotify

SITES =	https://download.owncloud.com/desktop/ownCloud/stable/latest/source/ \
	https://download.owncloud.com/desktop/ownCloud/stable/${V}/source/
SITES.a = 	https://github.com/owncloud/libre-graph-api-cpp-qt-client/archive/refs/tags/

MODULES =		devel/cmake x11/qt5

BUILD_DEPENDS = 	devel/kf6/extra-cmake-modules
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic
LIB_DEPENDS =		databases/sqlite3 \
			devel/libinotify \
			security/qtkeychain

CONFIGURE_ARGS +=	-Wno-dev \
			-DSYSCONF_INSTALL_DIR=${SYSCONFDIR} \
			-DKDE_INSTALL_PLUGINDIR=${PREFIX}/lib/ownCloud/plugins/ \
			-DCMAKE_DISABLE_FIND_PACKAGE_KF5=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_CMocka=TRUE \
			-DCSYNC_REQUIRED_LIBRARIES=c \
			-DWITH_AUTO_UPDATER=FALSE \
			-DWITH_LIBCLOUDPROVIDERS=FALSE

CFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/qtkeychain
CXXFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/qtkeychain
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =		Yes

post-extract:
	cp -r ${WRKDIR}/libre-graph-api-cpp-qt-client-${GRAPHAPI_V} \
		${WRKDIST}/src/libsync/libregraphapisrc-src
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ownCloud/
	mv ${WRKINST}/etc/ownCloud ${PREFIX}/share/examples/

.include <bsd.port.mk>
