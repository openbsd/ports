# $OpenBSD: Makefile,v 1.8 1999/11/05 06:36:08 kevlo Exp $

DISTNAME=	xwpe-1.5.20a
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.identicalsoftware.com/xwpe/ \
		ftp://identical.stu.rpi.edu/pub/linux/xwpe/
MASTER_SITE_SUBDIR= apps/editors/X

MAINTAINER=	yanick@fries.net

MAKEFILE=	${WRKSRC}/Makefile
ALL_TARGET=	xwpe

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
