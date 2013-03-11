# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:45 espie Exp $

COMMENT=	common file and directory routines for PHP

DISTNAME=	File-1.2.2
REVISION =	2
CATEGORIES=	textproc

MODULES=	www/pear

RUN_DEPENDS=	textproc/pear-XML-Tree

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

do-test: fake
	@cd ${WRKSRC}/tests && ${PEAR_PHPBIN} ./parser.php test.csv

.include <bsd.port.mk>
