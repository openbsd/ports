# $OpenBSD: Makefile,v 1.4 1999/10/31 06:32:45 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net> 

BROKEN=		C++ syntax errors, index.cxx:533: ANSI C++ forbids declaration `PhraseLength' with no type

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
