# $OpenBSD: Makefile,v 1.4 2009/09/18 09:30:35 jasper Exp $

COMMENT=	Swiss-army knife for reading and writing XML files

DISTNAME=	XML_Serializer-0.18.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
CATEGORIES=	textproc pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-XML-Util-*:textproc/pear-XML-Util

.include <bsd.port.mk>
