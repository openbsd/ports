# $OpenBSD: Makefile,v 1.12 2011/06/08 17:39:26 jasper Exp $

COMMENT=	process management module for Twisted

VERSION=	10.0.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}
REVISION =	1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
