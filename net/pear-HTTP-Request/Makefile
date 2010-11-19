# $OpenBSD: Makefile,v 1.18 2010/11/19 22:31:37 espie Exp $

COMMENT=	provide an easy way to perform HTTP requests

DISTNAME=	HTTP_Request-1.4.4
PKGNAME=	pear-${DISTNAME:S/_/-/}
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
