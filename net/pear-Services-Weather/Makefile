# $OpenBSD: Makefile,v 1.8 2009/11/06 08:32:37 jasper Exp $

COMMENT=	interface to various online weather-services for PHP

DISTNAME=	Services_Weather-1.4.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
CATEGORIES=	net pear

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
