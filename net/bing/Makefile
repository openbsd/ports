# $OpenBSD: Makefile,v 1.2 1999/04/06 19:52:48 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	bing-1.0.4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/

MAINTAINER=	ports@OpenBSD.ORG

MAN8= 		bing.8

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/bing
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/bing
.endif

.include <bsd.port.mk>
