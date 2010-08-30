# $OpenBSD: Makefile,v 1.12 2010/08/30 22:24:16 jasper Exp $

COMMENT=	experimental HTTP/1.1 server framework

CATEGORIES+=	www

VERSION=	8.1.0
DISTNAME=	TwistedWeb2-${VERSION}
PKGNAME=	py-twisted-web2-${VERSION}
REVISION =	3

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb2

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web2/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-web2-*:devel/py-twisted/web2 \
		:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.web2

post-install:
	cd ${PREFIX} && find . -name "*.orig" -exec rm {} \;

.include <bsd.port.mk>
