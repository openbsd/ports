# $OpenBSD: Makefile,v 1.8 2000/02/02 17:50:03 brad Exp $

DISTNAME=	giflib-4.1.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		${MASTER_SITES0}
MASTER_SITES0= 	http://www.arrakeen.demon.co.uk/giflib/
MASTER_SITE_SUBDIR= libs/giflib

PATCHFILES=	giflib-4.1.0-19990224.patch.gz:0 \
		giflib-4.1.0-19990305.patch.gz:0 \
		giflib-4.1.0-19990322.patch.gz:0 \
		giflib-4.1.0-19990415.patch.gz:0 \
		giflib-4.1.0-19990523.patch.gz:0

PATCH_DIST_STRIP= -p1

NEED_VERSION=	1.175

MAINTAINER=	yanick@fries.net

USE_GMAKE=	yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --sysconfdir="${SYSCONFDIR}"

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
