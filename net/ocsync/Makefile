# $OpenBSD: Makefile,v 1.9 2013/05/14 21:40:14 sthen Exp $

SHARED_LIBS +=	ocsync                    0.0 # 0.2
SHARED_ONLY=	Yes

COMMENT=	bidirectional directories synchronizer (owncloud version)

DISTNAME=	ocsync-0.70.7
REVISION=	0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://www.csync.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iniparser neon pthread smbclient sqlite3 ssh

MASTER_SITES=	http://download.owncloud.com/download/

MODULES=	devel/cmake \
		converters/libiconv

BUILD_DEPENDS=	devel/check \
		devel/doxygen

LIB_DEPENDS=	devel/iniparser \
		net/neon \
		net/samba \
		security/libssh

# XXX tar: Invalid header, starting valid header search.
TAR=		${LOCALBASE}/bin/gtar
BUILD_DEPENDS+=	archivers/gtar

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
