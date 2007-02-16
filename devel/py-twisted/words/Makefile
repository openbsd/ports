# $OpenBSD: Makefile,v 1.2 2007/02/16 07:30:56 steven Exp $

COMMENT=	"chat and instant messaging module for Twisted"

DISTNAME=	TwistedWords-0.4.0
PKGNAME=	py-twisted-words-0.4.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWords

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Words/0.4/ 

REGRESS_DEPENDS=:py-twisted-words-*:devel/py-twisted/words
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.words

.include <bsd.port.mk>
