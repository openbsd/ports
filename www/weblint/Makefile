# $OpenBSD: Makefile,v 1.2 2000/02/11 01:10:14 espie Exp $

DISTNAME=	  	weblint-1.020	
CATEGORIES=     	www

MAINTAINER=		seanc@cginfo.sk.ca

MASTER_SITES=		ftp://ftp.weblint.org/pub/weblint/ \
			http://www.perl.com/CPAN/authors/id/NEILB/ 

post-install:
.if !defined(NOPORTDOCS)
	@echo "==>   Installing weblint docs in ${PREFIX}/share/doc/weblint"
	@mkdir -p ${PREFIX}/share/doc/weblint && ${CHMOD} a+rx ${PREFIX}/share/doc/weblint
	@${INSTALL_DATA} ${WRKSRC}/weblint.ps ${PREFIX}/share/doc/weblint
	@${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/doc/weblint
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/weblint	
.endif

.include <bsd.port.mk>
