# $OpenBSD: Makefile,v 1.13 2011/06/20 10:25:33 eric Exp $

COMMENT=	process management module for Twisted

VERSION=	11.0.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://twistedmatrix.com/Releases/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
