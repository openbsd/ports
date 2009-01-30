# $OpenBSD: Makefile,v 1.8 2009/01/30 16:22:09 eric Exp $

COMMENT=	chat and instant messaging module for Twisted

VERSION=	8.2.0
DISTNAME=	TwistedWords-${VERSION}
PKGNAME=	py-twisted-words-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Words/${VERSION:R}/ 


REGRESS_DEPENDS=:py-twisted-words-*:devel/py-twisted/words
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.words

.include <bsd.port.mk>
