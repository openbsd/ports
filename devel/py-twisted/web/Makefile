# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:16 jasper Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	10.0.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/${VERSION:R}/

RUN_DEPENDS=	:py-SOAPpy-*:devel/py-SOAPpy
REGRESS_DEPENDS=:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
