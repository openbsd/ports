# $OpenBSD: Makefile,v 1.14 2011/09/16 09:24:56 espie Exp $

COMMENT=	process management module for Twisted

VERSION=	11.0.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://twistedmatrix.com/Releases/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
