# $OpenBSD: Makefile,v 1.5 2008/03/26 19:57:23 eric Exp $

COMMENT=	documentation generator

VERSION=	0.3.0
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
