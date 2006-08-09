# $OpenBSD

COMMENT=	"SSH and SFTP protocol implementation"

CATEGORIES=	net

DISTNAME=	TwistedConch-0.7.0
PKGNAME=	py-twisted-conch-0.7.0p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Conch/0.7/

REGRESS_DEPENDS=:py-twisted-conch-*:devel/py-twisted/conch
RUN_DEPENDS=	:py-crypto-*:security/py-crypto

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.conch

.include <bsd.port.mk>
