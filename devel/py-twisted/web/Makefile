# $OpenBSD: Makefile,v 1.9 2009/03/11 22:20:09 bernd Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	8.2.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/${VERSION:R}/

RUN_DEPENDS=	:py-SOAPpy-*:devel/py-SOAPpy
REGRESS_DEPENDS=:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
