# $OpenBSD: Makefile,v 1.10 2000/04/21 23:42:10 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net> 

#BROKEN=		C++ syntax errors, index.cxx:533: ANSI C++ forbids declaration PhraseLength with no type

DISTNAME=	Isearch-1.14
PKGNAME=	isearch-1.14	
CATEGORIES=	textproc databases
MASTER_SITES=	ftp://ftp.cnidr.org/pub/NIDR.tools/Isearch/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE= 		Yes 
FAKE=			Yes
MAKE_FLAGS=		CFLAGS='${CFLAGS} -DUNIX'
FAKE_FLAGS=		INSTALL=${WRKINST}${PREFIX}/bin

post-install:
	strip ${PREFIX}/bin/Isearch
	strip ${PREFIX}/bin/Iindex
	strip ${PREFIX}/bin/Iutil
.if !defined(NOPORTDOCS)
	mkdir -p ${PREFIX}/share/doc/Isearch
	${INSTALL_MAN} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch
.endif

.include <bsd.port.mk>
