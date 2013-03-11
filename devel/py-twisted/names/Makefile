# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:27 espie Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	11.1.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://twistedmatrix.com/Releases/Names/${VERSION:R}/

TEST_DEPENDS=devel/py-twisted/names

TRIAL_TARGET=	twisted.names

.include <bsd.port.mk>
