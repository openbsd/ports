# $OpenBSD: Makefile,v 1.9 2009/03/11 22:20:09 bernd Exp $

COMMENT=	chat and instant messaging module for Twisted

VERSION=	8.2.0
DISTNAME=	TwistedWords-${VERSION}
PKGNAME=	py-twisted-words-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Words/${VERSION:R}/ 


REGRESS_DEPENDS=:py-twisted-words-*:devel/py-twisted/words
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.words

.include <bsd.port.mk>
