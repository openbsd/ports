# $OpenBSD: Makefile,v 1.10 2010/07/05 13:37:02 eric Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	10.0.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/${VERSION:R}/

RUN_DEPENDS=	:py-SOAPpy-*:devel/py-SOAPpy
REGRESS_DEPENDS=:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
