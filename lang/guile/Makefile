# $OpenBSD: Makefile,v 1.7 1999/03/15 02:47:14 espie Exp $
#

DISTNAME=		guile-1.3
CATEGORIES=		lang

NEED_VERSION=		1.73

MAINTAINER=             rohee@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	guile
# Documentation expects to be able to make copies
SEPARATE_BUILD=simple

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
