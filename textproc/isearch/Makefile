# $OpenBSD: Makefile,v 1.7 2000/02/12 06:30:05 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net> 

BROKEN=		C++ syntax errors, index.cxx:533: ANSI C++ forbids declaration PhraseLength with no type

DISTNAME=	Isearch-1.14
PKGNAME=	isearch-1.14	
CATEGORIES=	textproc databases
MASTER_SITES=	ftp://ftp.cnidr.org/pub/NIDR.tools/Isearch/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

GNU_CONFIGURE= yes 

post-install:
	strip ${PREFIX}/bin/Isearch
	strip ${PREFIX}/bin/Iindex
	strip ${PREFIX}/bin/Iutil
.if !defined(NOPORTDOCS)
	mkdir -p ${PREFIX}/share/doc/Isearch
	${INSTALL_MAN} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch
.endif

.include <bsd.port.mk>
