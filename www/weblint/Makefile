# $OpenBSD: Makefile,v 1.3 2000/03/13 05:15:02 kevlo Exp $

DISTNAME=	  	weblint-1.020	
CATEGORIES=     	www

MAINTAINER=		seanc@cginfo.sk.ca

MASTER_SITES=		ftp://ftp.weblint.org/pub/weblint/ \
			http://www.perl.com/CPAN/authors/id/NEILB/ 

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=                   Yes
FAKE_FLAGS=             prefix=${DESTDIR}${PREFIX}

post-install:
.if !defined(NOPORTDOCS)
	@echo "==>   Installing weblint docs in ${PREFIX}/share/doc/weblint"
	@mkdir -p ${PREFIX}/share/doc/weblint && ${CHMOD} a+rx ${PREFIX}/share/doc/weblint
	@${INSTALL_DATA} ${WRKSRC}/weblint.ps ${PREFIX}/share/doc/weblint
	@${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/doc/weblint
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/weblint	
.endif

.include <bsd.port.mk>
