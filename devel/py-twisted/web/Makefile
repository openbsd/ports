# $OpenBSD: Makefile,v 1.8 2009/01/30 16:22:09 eric Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	8.2.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/${VERSION:R}/

RUN_DEPENDS=	:py-SOAPpy-*:devel/py-SOAPpy
REGRESS_DEPENDS=:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
