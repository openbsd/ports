# $OpenBSD: Makefile,v 1.7 2008/06/12 06:46:40 eric Exp $

COMMENT=	experimental HTTP/1.1 server framework

CATEGORIES+=	www

VERSION=	8.1.0
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
