# $OpenBSD: Makefile,v 1.5 1999/12/01 01:21:58 brad Exp $

DISTNAME=	xbill-2.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	yes

post-install:
	@cp ${WRKSRC}/README ${PREFIX}/share/xbill

.include <bsd.port.mk>
