# $OpenBSD: Makefile,v 1.10 2009/11/06 09:01:07 jasper Exp $

COMMENT=	interface to various online weather-services for PHP

DISTNAME=	Services_Weather-1.4.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-Cache-*:devel/pear-Cache \
		:pear-HTTP-Request-*:net/pear-HTTP-Request \
		:pear-XML-Serializer-*:textproc/pear-XML-Serializer

.include <bsd.port.mk>
