# $OpenBSD: Makefile,v 1.11 2000/03/14 01:46:51 espie Exp $

DISTNAME=	giflib-4.1.0
CATEGORIES=	graphics
NEED_VERSION=	1.175
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


MAINTAINER=	yanick@fries.net

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
FAKE=		Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --sysconfdir="${SYSCONFDIR}"

.include <bsd.port.mk>
