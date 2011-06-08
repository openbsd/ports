# $OpenBSD: Makefile,v 1.4 2011/06/08 17:39:26 jasper Exp $

COMMENT=	low-level networking for Twisted

CATEGORIES+=	net

VERSION=	10.0.0
DISTNAME=	TwistedPair-${VERSION}
PKGNAME=	py-twisted-pair-${VERSION}
REVISION =	1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedPair

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Pair/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/pair

TRIAL_TARGET=	twisted.pair

.include <bsd.port.mk>
