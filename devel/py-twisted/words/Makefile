# $OpenBSD: Makefile,v 1.5 2008/03/26 19:57:24 eric Exp $

COMMENT=	chat and instant messaging module for Twisted

VERSION=	0.5.0
DISTNAME=	TwistedWords-${VERSION}
PKGNAME=	py-twisted-words-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Words/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-words-*:devel/py-twisted/words
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.words

.include <bsd.port.mk>
