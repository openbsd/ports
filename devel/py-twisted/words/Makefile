# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:16 jasper Exp $

COMMENT=	chat and instant messaging module for Twisted

VERSION=	10.0.0
DISTNAME=	TwistedWords-${VERSION}
PKGNAME=	py-twisted-words-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Words/${VERSION:R}/ 


REGRESS_DEPENDS=:py-twisted-words-*:devel/py-twisted/words
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.words

.include <bsd.port.mk>
