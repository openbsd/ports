# $OpenBSD: Makefile,v 1.5 2008/03/26 19:57:23 eric Exp $

COMMENT=	process management module for Twisted

VERSION=	0.2.0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}p1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-runner-*:devel/py-twisted/runner

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.runner

.include <bsd.port.mk>
