# $OpenBSD: Makefile,v 1.5 1999/05/25 13:04:08 brad Exp $

DISTNAME=	giflib-4.1.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.arrakeen.demon.co.uk/giflib/
MASTER_SITE_SUBDIR= libs/giflib

PATCH_SITES=	http://www.arrakeen.demon.co.uk/giflib/
PATCHFILES=	giflib-4.1.0-19990224.patch.gz \
		giflib-4.1.0-19990305.patch.gz \
		giflib-4.1.0-19990322.patch.gz \
		giflib-4.1.0-19990415.patch.gz \
		giflib-4.1.0-19990523.patch.gz
PATCH_DIST_STRIP= -p1

NEED_VERSION=	1.73

MAINTAINER=	yanick@fries.net	

USE_GMAKE=	yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --sysconfdir=${SYSCONFDIR}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
