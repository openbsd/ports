# $OpenBSD: Makefile,v 1.12 2009/11/06 08:32:37 jasper Exp $

COMMENT=	easy way to perform HTTP requests for PHP

DISTNAME=	HTTP_Request-1.4.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	net pear

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/pear-Net-URL \
		::net/pear-Net-Socket

.include <bsd.port.mk>
