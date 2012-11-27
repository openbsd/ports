# $OpenBSD: Makefile,v 1.3 2012/11/27 06:37:31 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	bidirectional directories synchronizer (owncloud version)

DISTNAME=	ocsync-0.60.2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://www.csync.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c iniparser log4c neon pthread smbclient sqlite3 ssh

MASTER_SITES=	http://download.owncloud.com/download/

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/check \
		devel/doxygen

LIB_DEPENDS=	devel/iniparser \
		devel/log4c \
		net/neon \
		net/samba \
		security/libssh

# XXX tar: Invalid header, starting valid header search.
TAR=		${LOCALBASE}/bin/gtar
BUILD_DEPENDS+=	archivers/gtar

# csync_owncloud requires -pthread:
#     dlopen: failed to open libpthread.so.XX.X
CONFIGURE_ARGS=	-DCMAKE_C_FLAGS="${CFLAGS} -pthread" \
		-DCMAKE_SKIP_RPATH=ON \
		-DMAN_INSTALL_DIR=${PREFIX}/man \
		-DSYSCONFDIR=${SYSCONFDIR} \
		-DSYSCONF_INSTALL_DIR=${PREFIX}/share/examples \
		-DCMAKE_BUILD_TYPE=Release

NO_REGRESS=	Yes
USE_GROFF=	Yes

.include <bsd.port.mk>
