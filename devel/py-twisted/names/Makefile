# $OpenBSD: Makefile,v 1.15 2011/09/16 09:24:56 espie Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	11.0.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://twistedmatrix.com/Releases/Names/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/names

TRIAL_TARGET=	twisted.names

.include <bsd.port.mk>
