# $OpenBSD: Makefile,v 1.4 2000/02/12 06:30:00 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	bing-1.0.4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MAN8= 		bing.8

post-install:
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/bing
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/bing
.endif

.include <bsd.port.mk>
