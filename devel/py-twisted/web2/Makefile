# $OpenBSD: Makefile,v 1.6 2008/04/15 11:04:27 eric Exp $

COMMENT=	experimental HTTP/1.1 server framework

CATEGORIES+=	www

VERSION=	8.0.1
DISTNAME=	TwistedWeb2-${VERSION}
PKGNAME=	py-twisted-web2-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb2

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web2/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-web2-*:devel/py-twisted/web2 \
		:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.web2

.include <bsd.port.mk>
