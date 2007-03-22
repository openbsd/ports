# $OpenBSD: Makefile,v 1.5 2007/03/22 22:48:04 robert Exp $

COMMENT=	"parser for RDF Site Summary files in PHP"

DISTNAME=	XML_RSS-0.9.2
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

RUN_DEPENDS=	:pear-XML-Tree-*:textproc/pear-XML-Tree

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
