# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:42 sthen Exp $

COMMENT=	provide an easy way to perform HTTP requests

DISTNAME=	HTTP_Request-1.4.4
REVISION=	1
CATEGORIES=	net

MODULES=	www/pear

# BSD
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		net/pear-Net-URL \
			net/pear-Net-Socket>=1.0.9

.include <bsd.port.mk>
