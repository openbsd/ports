# $OpenBSD: Makefile,v 1.6 2000/04/09 17:37:19 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	bing-1.0.4
CATEGORIES=	net
FAKE=No
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAN8= 		bing.8

post-install:
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/bing
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/bing
.endif

.include <bsd.port.mk>
