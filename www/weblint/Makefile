# $OpenBSD: Makefile,v 1.4 2000/07/11 15:39:59 naddy Exp $

DISTNAME=	  	weblint-1.020	
CATEGORIES=     	www
NEED_VERSION=		1.312

HOMEPAGE=		http://www.weblint.org/

MAINTAINER=		seanc@cginfo.sk.ca

MASTER_SITES=		ftp://ftp.weblint.org/pub/weblint/ \
			http://www.perl.com/CPAN/authors/id/NEILB/ 

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/weblint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weblint.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/examples

.include <bsd.port.mk>
