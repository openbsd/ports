# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:16 jasper Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	10.0.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Names/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-names-*:devel/py-twisted/names

TRIAL_TARGET=	twisted.names

.include <bsd.port.mk>
