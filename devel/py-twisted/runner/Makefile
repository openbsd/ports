# $OpenBSD: Makefile,v 1.15 2011/12/08 20:15:40 eric Exp $

COMMENT=	process management module for Twisted

VERSION=	11.1.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://twistedmatrix.com/Releases/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
