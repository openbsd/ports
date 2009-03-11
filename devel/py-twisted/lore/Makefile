# $OpenBSD: Makefile,v 1.9 2009/03/11 22:20:09 bernd Exp $

COMMENT=	documentation generator

VERSION=	8.2.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Lore/${VERSION:R}/ 

REGRESS_DEPENDS=:py-twisted-lore-*:devel/py-twisted/lore
RUN_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web

TRIAL_TARGET=	twisted.lore

.include <bsd.port.mk>
