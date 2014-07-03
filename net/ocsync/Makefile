# $OpenBSD: Makefile,v 1.19 2014/07/03 11:38:45 ajacoutot Exp $

# XXX updating requires Thread Local Storage support

SHARED_ONLY=	Yes

COMMENT=	bidirectional directories synchronizer (owncloud version)

DISTNAME=	ocsync-0.90.4
EXTRACT_SUFX=	.tar.bz2
REVISION=	2

SHARED_LIBS +=	ocsync                    0.0 # 0.2

CATEGORIES=	net

HOMEPAGE=	http://owncloud.org/sync-clients/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iniparser m neon pthread sqlite3 stdc++

MASTER_SITES=	http://download.owncloud.com/download/

MODULES=	devel/cmake \
		converters/libiconv

BUILD_DEPENDS=	devel/check \
		devel/doxygen

LIB_DEPENDS=	devel/iniparser \
		net/neon

# csync_owncloud requires -pthread, dlopen: failed to open libpthread.so.XX.X
CONFIGURE_ARGS=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
		-DCMAKE_SKIP_RPATH=YES \
		-DMAN_INSTALL_DIR=${PREFIX}/man \
		-DSYSCONFDIR=${SYSCONFDIR} \
		-DSYSCONF_INSTALL_DIR=${PREFIX}/share/examples \
		-DCMAKE_BUILD_TYPE=Release

# force disabling libssh and samba support
CONFIGURE_ARGS+= \
		-DSMBCLIENT_LIBRARY=SMBCLIENT_LIBRARY-NOTFOUND \
		-DSSH_LIBRARY=SSH_LIBRARY-NOTFOUND

NO_TEST=	Yes
USE_GROFF=	Yes

.include <bsd.port.mk>
