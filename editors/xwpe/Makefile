# $OpenBSD: Makefile,v 1.6 1999/05/07 16:50:58 brad Exp $

DISTNAME=	xwpe-1.5.17a
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.rpi.edu/~payned/xwpe/ \
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
