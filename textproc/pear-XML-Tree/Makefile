# $OpenBSD: Makefile,v 1.5 2007/03/22 22:48:04 robert Exp $

COMMENT=	"classes to represent XML data in PHP"

DISTNAME=	XML_Tree-1.1
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

RUN_DEPENDS=	:pear-XML-Parser-*:textproc/pear-XML-Parser

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
