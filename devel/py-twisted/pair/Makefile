# $OpenBSD: Makefile,v 1.5 2011/06/20 10:25:33 eric Exp $

COMMENT=	low-level networking for Twisted

CATEGORIES+=	net

VERSION=	11.0.0
DISTNAME=	TwistedPair-${VERSION}
PKGNAME=	py-twisted-pair-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedPair

MASTER_SITES=	http://twistedmatrix.com/Releases/Pair/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/pair

TRIAL_TARGET=	twisted.pair

.include <bsd.port.mk>
