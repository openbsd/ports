# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:27 espie Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	11.1.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://twistedmatrix.com/Releases/Web/${VERSION:R}/

RUN_DEPENDS=	devel/py-SOAPpy
TEST_DEPENDS=devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
