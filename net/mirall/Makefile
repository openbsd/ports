# $OpenBSD: Makefile,v 1.2 2014/06/24 09:53:59 ajacoutot Exp $

COMMENT =		owncloud sync client

DISTNAME =		mirall-1.4.2
REVISION =		0

SHARED_LIBS =		owncloudsync 0.0

CATEGORIES =		net

HOMEPAGE =		http://owncloud.org/sync-clients/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtDBus QtGui QtNetwork QtTest QtWebKit QtXml QtXmlPatterns
WANTLIB += X11 c m ocsync pthread sqlite3 lib/inotify/inotify

MASTER_SITES =		http://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake x11/qt4 gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS = 	c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/libinotify \
			net/ocsync

CONFIGURE_ARGS +=	-DBUILD_TYPE=Release \
			-DCSYNC_INCLUDE_PATH=${LOCALBASE}/include/ocsync \
			-DINOTIFY_INCLUDE_DIR=${LOCALBASE}/include/inotify

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/etc ${PREFIX}/share/examples/mirall

.include <bsd.port.mk>
