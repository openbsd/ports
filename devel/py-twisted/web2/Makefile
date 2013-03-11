# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:27 espie Exp $

COMMENT=	experimental HTTP/1.1 server framework

CATEGORIES+=	www

VERSION=	8.1.0
DISTNAME=	TwistedWeb2-${VERSION}
PKGNAME=	py-twisted-web2-${VERSION}
REVISION =	5

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb2

MASTER_SITES=	http://twistedmatrix.com/Releases/Web2/${VERSION:R}/

TEST_DEPENDS=devel/py-twisted/web2 \
		devel/py-twisted/web

TRIAL_TARGET=	twisted.web2

post-install:
	cd ${PREFIX} && find . -name "*.orig" -exec rm {} \;

.include <bsd.port.mk>
