# $OpenBSD: Makefile,v 1.9 2009/03/11 22:20:09 bernd Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	8.2.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Names/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-names-*:devel/py-twisted/names

TRIAL_TARGET=	twisted.names

.include <bsd.port.mk>
