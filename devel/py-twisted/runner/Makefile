# $OpenBSD: Makefile,v 1.18 2015/08/19 20:13:59 sthen Exp $

COMMENT=	process management module for Twisted

VERSION=	11.1.0
REVISION=	0
DISTNAME=	TwistedRunner-${VERSION}
PKGNAME=	py-twisted-runner-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://twistedmatrix.com/Releases/Runner/${VERSION:R}/

WANTLIB += ${MODPY_WANTLIB} pthread

TEST_DEPENDS=devel/py-twisted/runner

TRIAL_TARGET=	twisted.runner

.include <bsd.port.mk>
