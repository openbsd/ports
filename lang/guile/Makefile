# $OpenBSD: Makefile,v 1.8 1999/03/22 05:49:07 brad Exp $

DISTNAME=	guile-1.3
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	guile

NEED_VERSION=	1.73

MAINTAINER=	rohee@OpenBSD.ORG

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/guile.m4 ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/qthreads.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
