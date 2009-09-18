# $OpenBSD: Makefile,v 1.7 2009/09/18 09:30:35 jasper Exp $

COMMENT=	parser for RDF Site Summary files in PHP

DISTNAME=	XML_RSS-0.9.2
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	www/pear

RUN_DEPENDS=	:pear-XML-Tree-*:textproc/pear-XML-Tree

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
