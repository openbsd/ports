# $OpenBSD: Makefile,v 1.3 1999/03/18 01:31:15 brad Exp $

DISTNAME=		giflib-4.1.0
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	libs/giflib

NEED_VERSION=		1.73

MAINTAINER=		yanick@fries.net	

USE_GMAKE=	yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static --sysconfdir=${SYSCONFDIR}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
