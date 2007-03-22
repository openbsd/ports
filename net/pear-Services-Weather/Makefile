# $OpenBSD: Makefile,v 1.5 2007/03/22 22:48:04 robert Exp $

COMMENT=	"interface to various online weather-services for PHP"

DISTNAME=	Services_Weather-1.4.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS	:pear-Cache-*:devel/pear-Cache \
		:pear-HTTP-Request-*:net/pear-HTTP-Request \
		:pear-XML-Serializer-*:textproc/pear-XML-Serializer

.include <bsd.port.mk>
