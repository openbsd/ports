# $OpenBSD: Makefile,v 1.16 2011/12/08 20:15:40 eric Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	11.1.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://twistedmatrix.com/Releases/Names/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/names

TRIAL_TARGET=	twisted.names

.include <bsd.port.mk>
