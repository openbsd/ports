# $OpenBSD: Makefile,v 1.6 2009/11/06 09:01:07 jasper Exp $

COMMENT=	common file and directory routines for PHP

DISTNAME=	File-1.2.2
PKGNAME=	pear-${DISTNAME}p1
CATEGORIES=	textproc

MODULES=	www/pear

RUN_DEPENDS=	:pear-XML-Tree-*:textproc/pear-XML-Tree

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-regress: fake
	@cd ${WRKSRC}/tests && ${PEAR_PHPBIN} ./parser.php test.csv

.include <bsd.port.mk>
