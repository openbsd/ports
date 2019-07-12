# $OpenBSD: Makefile,v 1.42 2019/07/12 20:48:35 sthen Exp $

COMMENT =		owncloud sync client

DISTNAME =		owncloudclient-2.5.4.11654

SHARED_LIBS +=		owncloudsync	5.0
SHARED_LIBS +=		owncloud_csync	0.0

CATEGORIES =		net

HOMEPAGE =		https://owncloud.org/download/#owncloud-desktop-client

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml qt5keychain
WANTLIB += c lib/inotify/inotify m pthread sqlite3 z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		https://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake x11/qt5

# c++0x
COMPILER = 		base-clang ports-gcc

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		databases/sqlite3 \
			devel/libinotify \
			security/qtkeychain,qt5 \
			x11/qt5/qtwebkit

CONFIGURE_ARGS +=	-Wno-dev \
			-DSYSCONF_INSTALL_DIR=${SYSCONFDIR} \
			-DCMAKE_C_FLAGS="${CFLAGS} \
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
				-Wl,-rpath=${LOCALBASE}/lib/inotify" \
			-DCMAKE_DISABLE_FIND_PACKAGE_KF5=TRUE

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mirall/
	mv ${WRKINST}/etc/ownCloud ${PREFIX}/share/examples/mirall/

.include <bsd.port.mk>
