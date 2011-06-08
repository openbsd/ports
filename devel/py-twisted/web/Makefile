# $OpenBSD: Makefile,v 1.13 2011/06/08 17:39:26 jasper Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	10.0.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}
REVISION =	1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/${VERSION:R}/

RUN_DEPENDS=	devel/py-SOAPpy
REGRESS_DEPENDS=devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
