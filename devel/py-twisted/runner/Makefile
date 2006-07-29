# $OpenBSD

COMMENT=	"process management module for Twisted"

DISTNAME=	TwistedRunner-0.2.0
PKGNAME=	py-twisted-runner-0.2.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedRunner

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Runner/0.2/ 

REGRESS_DEPENDS=:py-twisted-runner-*:devel/py-twisted/runner

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.runner

.include <bsd.port.mk>
