# $OpenBSD: Makefile,v 1.11 2003/10/18 19:45:01 sturm Exp $

COMMENT=	"perl lint program for html"

DISTNAME=	weblint-1.020	
CATEGORIES=	www

MASTER_SITES=	http://www.perl.com/CPAN/authors/id/NEILB/

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

REGRESS_TARGET=	test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weblint
	${INSTALL_SCRIPT} ${WRKSRC}/weblint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weblint.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/examples/weblint

.include <bsd.port.mk>
