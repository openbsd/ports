# $OpenBSD: Makefile,v 1.11 2010/11/15 19:46:08 espie Exp $

COMMENT=	process management module for Twisted

VERSION=	10.0.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
