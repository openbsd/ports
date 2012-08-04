# $OpenBSD: Makefile,v 1.5 2012/08/04 15:13:26 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	bidirectional directories synchronizer
REVISION=	0

DISTNAME=	csync-0.50.7

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

SHARED_LIBS +=  csync                     0.0 # 0.1

HOMEPAGE=	http://www.csync.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c iniparser log4c neon smbclient sqlite3 ssh

MASTER_SITES=	http://download.owncloud.com/download/

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/argp-standalone \
		devel/check \
		devel/doxygen

LIB_DEPENDS=	devel/iniparser \
		devel/log4c \
		net/neon \
		net/samba \
		security/libssh

CONFIGURE_ARGS=	-DCMAKE_C_FLAGS="${CFLAGS}" \
		-DCMAKE_SKIP_RPATH=ON \
		-DMAN_INSTALL_DIR=${PREFIX}/man \
		-DSYSCONFDIR=${SYSCONFDIR} \
		-DSYSCONF_INSTALL_DIR=${PREFIX}/share/examples \
		-DCMAKE_BUILD_TYPE=Release

NO_REGRESS=	Yes
USE_GROFF=	Yes

.include <bsd.port.mk>
