# $OpenBSD: Makefile,v 1.4 1999/10/02 22:50:31 brad Exp $

DISTNAME=	xbill-2.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz

BROKEN=		"does not compile with EGCS"

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	yes

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/share/xbill

.include <bsd.port.mk>
