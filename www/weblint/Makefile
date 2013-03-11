# $OpenBSD: Makefile,v 1.18 2013/03/11 11:44:50 espie Exp $

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
USE_GROFF =	Yes

TEST_TARGET=	test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weblint
	${INSTALL_SCRIPT} ${WRKSRC}/weblint ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weblint.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/weblintrc ${PREFIX}/share/examples/weblint

.include <bsd.port.mk>
