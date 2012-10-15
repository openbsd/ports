# $OpenBSD: Makefile,v 1.17 2012/10/15 15:06:42 sthen Exp $

COMMENT=	documentation generator

VERSION=	11.1.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://twistedmatrix.com/Releases/Lore/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/lore
RUN_DEPENDS=	devel/py-twisted/web

TRIAL_TARGET=	twisted.lore

.include <bsd.port.mk>
