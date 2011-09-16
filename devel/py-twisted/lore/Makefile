# $OpenBSD: Makefile,v 1.15 2011/09/16 09:24:56 espie Exp $

COMMENT=	documentation generator

VERSION=	11.0.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://twistedmatrix.com/Releases/Lore/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/lore
RUN_DEPENDS=	devel/py-twisted/web

TRIAL_TARGET=	twisted.lore

.include <bsd.port.mk>
