# $OpenBSD: Makefile,v 1.9 2000/02/10 09:29:44 espie Exp $

DISTNAME=	xwpe-1.5.22a
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.identicalsoftware.com/xwpe/ 
MASTER_SITE_SUBDIR= apps/editors/X

MAINTAINER=	yanick@fries.net

ALL_TARGET=	xwpe

GNU_CONFIGURE=	Yes

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
