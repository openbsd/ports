# $OpenBSD: Makefile,v 1.3 2005/02/27 23:14:32 mbalmer Exp $

COMMENT=	"parser for RDF Site Summary files in PHP"

DISTNAME=	XML_RSS-0.9.2
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

RUN_DEPENDS=	:pear-XML-Tree-*:textproc/pear-XML-Tree

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
