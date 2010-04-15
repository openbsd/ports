# $OpenBSD: Makefile,v 1.16 2010/04/15 14:11:01 ajacoutot Exp $

COMMENT=	provide an easy way to perform HTTP requests

DISTNAME=	HTTP_Request-1.4.4
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	net

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::net/pear-Net-URL \
			:pear-Net-Socket->=1.0.9:net/pear-Net-Socket

.include <bsd.port.mk>
