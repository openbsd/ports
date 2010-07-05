# $OpenBSD: Makefile,v 1.11 2010/07/05 13:37:02 eric Exp $

COMMENT=	experimental HTTP/1.1 server framework

CATEGORIES+=	www

VERSION=	8.1.0
DISTNAME=	TwistedWeb2-${VERSION}
PKGNAME=	py-twisted-web2-${VERSION}p2

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb2

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web2/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-web2-*:devel/py-twisted/web2 \
		:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.web2

post-install:
	cd ${PREFIX} && find . -name "*.orig" -exec rm {} \;

.include <bsd.port.mk>
