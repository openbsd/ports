# $OpenBSD: Makefile,v 1.16 2011/09/16 09:24:56 espie Exp $

COMMENT=	experimental HTTP/1.1 server framework

CATEGORIES+=	www

VERSION=	8.1.0
DISTNAME=	TwistedWeb2-${VERSION}
PKGNAME=	py-twisted-web2-${VERSION}
REVISION =	5

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb2

MASTER_SITES=	http://twistedmatrix.com/Releases/Web2/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/web2 \
		devel/py-twisted/web

TRIAL_TARGET=	twisted.web2

post-install:
	cd ${PREFIX} && find . -name "*.orig" -exec rm {} \;

.include <bsd.port.mk>
