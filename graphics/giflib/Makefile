# $OpenBSD: Makefile,v 1.17 2001/05/06 05:05:45 lebel Exp $

COMMENT=	"Gif Library and utilities"

DISTNAME=	giflib-4.1.0
CATEGORIES=	graphics
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITES0=	${MASTER_SITE_BACKUP}
MASTER_SITE_SUBDIR= libs/giflib

PATCHFILES=	giflib-4.1.0-19990224.patch.gz:0 \
		giflib-4.1.0-19990305.patch.gz:0 \
		giflib-4.1.0-19990322.patch.gz:0 \
		giflib-4.1.0-19990415.patch.gz:0 \
		giflib-4.1.0-19990523.patch.gz:0
PATCH_DIST_STRIP= -p1

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+= --without-x
.endif

.include <bsd.port.mk>
