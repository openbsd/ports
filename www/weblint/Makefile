# $OpenBSD: Makefile,v 1.19 2015/02/16 22:57:13 naddy Exp $

COMMENT=	perl lint program for html

DISTNAME=	weblint-1.020
REVISION=	0
CATEGORIES=	www

MASTER_SITES=	http://www.perl.com/CPAN/authors/id/NEILB/

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
PKG_ARCH=	*

TEST_TARGET=	test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weblint
	${INSTALL_SCRIPT} ${WRKSRC}/weblint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weblint.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/examples/weblint

.include <bsd.port.mk>
