# $OpenBSD: Makefile,v 1.13 2009/11/06 09:01:07 jasper Exp $

COMMENT=	easy way to perform HTTP requests for PHP

DISTNAME=	HTTP_Request-1.4.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/pear-Net-URL \
		::net/pear-Net-Socket

.include <bsd.port.mk>
