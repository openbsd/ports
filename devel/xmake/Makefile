# $OpenBSD: Makefile,v 1.2 1998/10/08 18:52:26 marc Exp $
#

DISTNAME=	xmake-1.01
CATEGORIES=	devel

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz

WRKSRC=		${WRKDIR}/xmake

pre-build:
	@${RM} -rf ${WRKSRC}/obj

.include <bsd.port.mk>
