# $OpenBSD: Makefile,v 1.1.1.1 2006/10/28 12:43:42 mbalmer Exp $

COMMENT=	"Swiss-army knife for reading and writing XML files"

DISTNAME=	XML_Serializer-0.18.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-XML-Util-*:textproc/pear-XML-Util

.include <bsd.port.mk>
