# $OpenBSD: Makefile,v 1.10 2010/07/05 13:37:02 eric Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	10.0.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Names/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-names-*:devel/py-twisted/names

TRIAL_TARGET=	twisted.names

.include <bsd.port.mk>
