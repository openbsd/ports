# $OpenBSD: Makefile,v 1.3 2000/02/11 01:10:08 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	bing-1.0.4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/

MAINTAINER=	ports@OpenBSD.ORG

MAN8= 		bing.8

post-install:
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/bing
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/bing
.endif

.include <bsd.port.mk>
