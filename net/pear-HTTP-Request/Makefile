# $OpenBSD: Makefile,v 1.19 2011/06/04 11:41:08 sthen Exp $

COMMENT=	provide an easy way to perform HTTP requests

DISTNAME=	HTTP_Request-1.4.4
REVISION=	0
CATEGORIES=	net

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		net/pear-Net-URL \
			net/pear-Net-Socket>=1.0.9

.include <bsd.port.mk>
