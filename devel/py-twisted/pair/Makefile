# $OpenBSD: Makefile,v 1.1 2010/07/05 13:37:02 eric Exp $

COMMENT=	low-level networking for Twisted

CATEGORIES+=	net

VERSION=	10.0.0
DISTNAME=	TwistedPair-${VERSION}
PKGNAME=	py-twisted-pair-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedPair

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Pair/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-pair-*:devel/py-twisted/pair

TRIAL_TARGET=	twisted.pair

.include <bsd.port.mk>
