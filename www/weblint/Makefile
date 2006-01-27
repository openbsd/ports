# $OpenBSD: Makefile,v 1.13 2006/01/27 20:57:02 alek Exp $

COMMENT=	"perl lint program for html"

DISTNAME=	weblint-1.020	
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

MASTER_SITES=	http://www.perl.com/CPAN/authors/id/NEILB/

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
PKG_ARCH=	*

REGRESS_TARGET=	test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weblint
	${INSTALL_SCRIPT} ${WRKSRC}/weblint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weblint.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/examples/weblint

.include <bsd.port.mk>
