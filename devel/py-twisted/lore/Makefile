# $OpenBSD: Makefile,v 1.6 2008/04/15 11:04:27 eric Exp $

COMMENT=	documentation generator

VERSION=	8.0.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Lore/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-lore-*:devel/py-twisted/lore
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.lore

.include <bsd.port.mk>
