# $OpenBSD: Makefile,v 1.12 2010/11/15 19:46:08 espie Exp $

COMMENT=	chat and instant messaging module for Twisted

VERSION=	10.0.0
DISTNAME=	TwistedWords-${VERSION}
PKGNAME=	py-twisted-words-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Words/${VERSION:R}/ 


REGRESS_DEPENDS=devel/py-twisted/words
RUN_DEPENDS=	devel/py-twisted/web

TRIAL_TARGET=	twisted.words

.include <bsd.port.mk>
