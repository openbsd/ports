# $OpenBSD: Makefile,v 1.2 2010/08/30 22:24:16 jasper Exp $

COMMENT=	low-level networking for Twisted

CATEGORIES+=	net

VERSION=	10.0.0
DISTNAME=	TwistedPair-${VERSION}
PKGNAME=	py-twisted-pair-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedPair

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Pair/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-pair-*:devel/py-twisted/pair

TRIAL_TARGET=	twisted.pair

.include <bsd.port.mk>
