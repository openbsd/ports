# $OpenBSD: Makefile,v 1.6 1999/03/02 04:41:05 marc Exp $
#

DISTNAME=		guile-1.3
CATEGORIES=		lang

NEED_VERSION=		1.73

MAINTAINER=             rohee@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	guile

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
