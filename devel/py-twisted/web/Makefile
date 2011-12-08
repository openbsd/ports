# $OpenBSD: Makefile,v 1.16 2011/12/08 20:15:40 eric Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	11.1.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://twistedmatrix.com/Releases/Web/${VERSION:R}/

RUN_DEPENDS=	devel/py-SOAPpy
REGRESS_DEPENDS=devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
