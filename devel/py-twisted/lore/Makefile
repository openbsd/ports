# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:16 jasper Exp $

COMMENT=	documentation generator

VERSION=	10.0.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Lore/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-lore-*:devel/py-twisted/lore
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.lore

.include <bsd.port.mk>
