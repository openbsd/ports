# $OpenBSD: Makefile,v 1.2 2007/02/16 07:30:56 steven Exp $

COMMENT=	"documentation generator"

DISTNAME=	TwistedLore-0.2.0
PKGNAME=	py-twisted-lore-0.2.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Lore/0.2/ 

REGRESS_DEPENDS=:py-twisted-lore-*:devel/py-twisted/lore
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.lore

.include <bsd.port.mk>
