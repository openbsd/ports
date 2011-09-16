# $OpenBSD: Makefile,v 1.14 2011/09/16 11:13:39 espie Exp $

COMMENT=	interface to various online weather-services for PHP

DISTNAME=	Services_Weather-1.4.0
REVISION=	3
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/pear-Cache \
		net/pear-HTTP-Request \
		textproc/pear-XML-Serializer

.include <bsd.port.mk>
