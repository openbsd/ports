# $OpenBSD: Makefile,v 1.15 2011/09/16 09:24:56 espie Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

VERSION=	11.0.0
DISTNAME=	TwistedWeb-${VERSION}
PKGNAME=	py-twisted-web-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://twistedmatrix.com/Releases/Web/${VERSION:R}/

RUN_DEPENDS=	devel/py-SOAPpy
REGRESS_DEPENDS=devel/py-twisted/web

TRIAL_TARGET=	twisted.web

.include <bsd.port.mk>
