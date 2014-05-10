# $OpenBSD: Makefile,v 1.18 2014/05/10 06:57:26 kirby Exp $

# XXX updating requires Thread Local Storage support

SHARED_ONLY=	Yes

COMMENT=	bidirectional directories synchronizer (owncloud version)

DISTNAME=	ocsync-0.90.4
EXTRACT_SUFX=	.tar.bz2
REVISION=	1

SHARED_LIBS +=	ocsync                    0.0 # 0.2

CATEGORIES=	net

HOMEPAGE=	http://owncloud.org/sync-clients/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iniparser m neon pthread smbclient sqlite3 ssh stdc++

MASTER_SITES=	http://download.owncloud.com/download/

MODULES=	devel/cmake \
		converters/libiconv

BUILD_DEPENDS=	devel/check \
		devel/doxygen

LIB_DEPENDS=	devel/iniparser \
		net/neon \
		net/samba \
		security/libssh

# csync_owncloud requires -pthread:
#     dlopen: failed to open libpthread.so.XX.X
CONFIGURE_ARGS=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
		-DCMAKE_SKIP_RPATH=YES \
		-DMAN_INSTALL_DIR=${PREFIX}/man \
		-DSYSCONFDIR=${SYSCONFDIR} \
		-DSYSCONF_INSTALL_DIR=${PREFIX}/share/examples \
		-DCMAKE_BUILD_TYPE=Release

NO_TEST=	Yes
USE_GROFF=	Yes

.include <bsd.port.mk>
