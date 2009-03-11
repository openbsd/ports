# $OpenBSD: Makefile,v 1.8 2009/03/11 22:20:09 bernd Exp $

COMMENT=	process management module for Twisted

VERSION=	8.2.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-runner-*:devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
