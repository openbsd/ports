# $OpenBSD: Makefile,v 1.6 2000/10/22 14:03:55 espie Exp $

DISTNAME=	weblint-1.020	
CATEGORIES=	www
NEED_VERSION=	1.312
MASTER_SITES=	ftp://ftp.weblint.org/pub/weblint/ \
		http://www.perl.com/CPAN/authors/id/NEILB/ 

HOMEPAGE=	http://www.weblint.org/

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weblint
	${INSTALL_SCRIPT} ${WRKSRC}/weblint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weblint.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/examples/weblint

.include <bsd.port.mk>
