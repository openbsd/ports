# $OpenBSD: Makefile,v 1.18 2013/03/11 10:50:27 espie Exp $

COMMENT=	chat and instant messaging module for Twisted

VERSION=	11.1.0
DISTNAME=	TwistedWords-${VERSION}
PKGNAME=	py-twisted-words-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://twistedmatrix.com/Releases/Words/${VERSION:R}/


TEST_DEPENDS=devel/py-twisted/words
RUN_DEPENDS=	devel/py-twisted/web

TRIAL_TARGET=	twisted.words

.include <bsd.port.mk>
