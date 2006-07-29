# $OpenBSD

COMMENT=	"experimental HTTP/1.1 server framework"

CATEGORIES=	www

DISTNAME=	TwistedWeb2-0.2.0
PKGNAME=	py-twisted-web2-0.2.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb2

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web2/

REGRESS_DEPENDS=:py-twisted-web2-*:devel/py-twisted/web2
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.web2

.include <bsd.port.mk>
