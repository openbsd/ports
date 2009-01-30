# $OpenBSD: Makefile,v 1.7 2009/01/30 16:22:09 eric Exp $

COMMENT=	process management module for Twisted

VERSION=	8.2.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-runner-*:devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
