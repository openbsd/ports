# $OpenBSD: Makefile,v 1.6 2011/09/16 09:24:56 espie Exp $

COMMENT=	low-level networking for Twisted

CATEGORIES+=	net

VERSION=	11.0.0
DISTNAME=	TwistedPair-${VERSION}
PKGNAME=	py-twisted-pair-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedPair

MASTER_SITES=	http://twistedmatrix.com/Releases/Pair/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/pair

TRIAL_TARGET=	twisted.pair

.include <bsd.port.mk>
