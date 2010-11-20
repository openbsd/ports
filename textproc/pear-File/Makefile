# $OpenBSD: Makefile,v 1.7 2010/11/20 19:56:51 espie Exp $

COMMENT=	common file and directory routines for PHP

DISTNAME=	File-1.2.2
PKGNAME=	pear-${DISTNAME}
REVISION =	1
CATEGORIES=	textproc

MODULES=	www/pear

RUN_DEPENDS=	textproc/pear-XML-Tree

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-regress: fake
	@cd ${WRKSRC}/tests && ${PEAR_PHPBIN} ./parser.php test.csv

.include <bsd.port.mk>
