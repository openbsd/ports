# $OpenBSD: Makefile,v 1.4 2006/05/09 14:16:50 robert Exp $

COMMENT=	"classes to represent XML data in PHP"

DISTNAME=	XML_Tree-1.1
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

RUN_DEPENDS=	:pear-XML-Parser-*:textproc/pear-XML-Parser

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
