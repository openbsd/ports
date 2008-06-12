# $OpenBSD: Makefile,v 1.7 2008/06/12 06:46:40 eric Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	8.1.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/${VERSION:R}/

RUN_DEPENDS=	:py-SOAPpy-*:devel/py-SOAPpy
REGRESS_DEPENDS=:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.web

.include <bsd.port.mk>
