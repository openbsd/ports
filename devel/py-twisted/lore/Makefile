# $OpenBSD: Makefile,v 1.8 2009/01/30 16:22:09 eric Exp $

COMMENT=	documentation generator

VERSION=	8.2.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Lore/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-lore-*:devel/py-twisted/lore
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.lore

.include <bsd.port.mk>
