# $OpenBSD

COMMENT=	"DNS protocol implementation"

CATEGORIES+=	net

DISTNAME=	TwistedNames-0.3.0
PKGNAME=	py-twisted-names-0.3.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Names/0.3/ 

REGRESS_DEPENDS=:py-twisted-names-*:devel/py-twisted/names

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.names

.include <bsd.port.mk>
