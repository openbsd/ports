# $OpenBSD: Makefile,v 1.3 1999/04/06 19:34:18 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net> 

DISTNAME=	Isearch-1.14
PKGNAME=	isearch-1.14	
CATEGORIES=	textproc databases
MASTER_SITES=	ftp://ftp.cnidr.org/pub/NIDR.tools/Isearch/

MAINTAINER=	ports@OpenBSD.ORG

GNU_CONFIGURE= yes 

post-install:
	strip ${PREFIX}/bin/Isearch
	strip ${PREFIX}/bin/Iindex
	strip ${PREFIX}/bin/Iutil
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/Isearch
	${INSTALL_MAN} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch
.endif

.include <bsd.port.mk>
