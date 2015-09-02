# $OpenBSD: Makefile,v 1.4 2015/09/02 07:53:59 kirby Exp $

COMMENT =		owncloud sync client

DISTNAME =		owncloudclient-2.0.0

SHARED_LIBS =		owncloudsync	2.0
SHARED_LIBS +=		ocsync		2.0

CATEGORIES =		net

HOMEPAGE =		http://owncloud.org/sync-clients/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtDBus QtGui QtNetwork QtSql QtWebKit QtXml c
WANTLIB += crypto lib/inotify/inotify m neon pthread qtkeychain
WANTLIB += sqlite3 ssl z

MASTER_SITES =		https://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.xz

MODULES =		converters/libiconv devel/cmake x11/qt4 gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/libinotify \
			net/neon \
			security/qtkeychain

CONFIGURE_ARGS +=	-DBUILD_WITH_QT4=ON \
			-DSYSCONF_INSTALL_DIR=${SYSCONFDIR} \
			-DCMAKE_C_FLAGS="${CFLAGS} \
				-I${LOCALBASE}/include/inotify" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include/inotify" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
				-L${LOCALBASE}/lib/inotify -linotify \
				-Wl,-rpath=${LOCALBASE}/lib/inotify"

# see post-extract
CFLAGS += 		 -DHAVE_ICONV -DHAVE_ICONV_H
CXXFLAGS += 		 -DHAVE_ICONV -DHAVE_ICONV_H

NO_TEST =		Yes

post-extract:
	mv ${WRKSRC}/cmake/modules/FindIconv.cmake \
		${WRKSRC}/cmake/modules/FindIconv_local.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mirall/
	mv ${WRKINST}/etc/ownCloud ${PREFIX}/share/examples/mirall/

.include <bsd.port.mk>
