# $OpenBSD: Makefile,v 1.6 2008/04/15 11:04:27 eric Exp $

COMMENT=	process management module for Twisted

VERSION=	8.0.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-runner-*:devel/py-twisted/runner

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.runner

.include <bsd.port.mk>
