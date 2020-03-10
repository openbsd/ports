# $OpenBSD: Makefile,v 1.6 2020/03/10 13:11:36 kirby Exp $ #

COMMENT =	desktop sync client for Nextcloud

V =		2.6.4
DISTNAME =	nextcloudclient-${V}

GH_ACCOUNT =	nextcloud
GH_PROJECT =	desktop
GH_TAGNAME =	v${V}

CATEGORIES =	net

HOMEPAGE =	https://nextcloud.com

SHARED_LIBS +=  nextcloudsync	0.0 # 2.6.1
SHARED_LIBS +=  ocsync		0.0 # 2.6.1

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml c crypto m qt5keychain
WANTLIB += sqlite3 ssl z lib/inotify/inotify

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gettext,-tools

# Needs for test at build-time
BUILD_DEPENDS +=	devel/cmocka

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		databases/sqlite3 \
			devel/libinotify \
			security/qtkeychain

CONFIGURE_ARGS =	-DBUILD_SHELL_INTEGRATION_NAUTILUS=OFF \
			-DBUILD_SHELL_INTEGRATION_DOLPHIN=OFF \
			-DBUILD_SHELL_INTEGRATION=OFF \
			-DUNIT_TESTING=ON \
			-DWITH_CRASHREPORTER=OFF \
			-DNO_SHIBBOLETH=ON

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

post-extract:
	# use system-wide cmake modules
	rm ${WRKSRC}/cmake/modules/GNUInstallDirs.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Nextcloud/
	mv ${WRKINST}/etc/Nextcloud ${PREFIX}/share/examples/

.include <bsd.port.mk>
