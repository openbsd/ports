# $OpenBSD: Makefile,v 1.12 2010/11/15 19:46:08 espie Exp $

COMMENT=	documentation generator

VERSION=	10.0.0
DISTNAME=	TwistedLore-${VERSION}
PKGNAME=	py-twisted-lore-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedLore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Lore/${VERSION:R}/ 

REGRESS_DEPENDS=devel/py-twisted/lore
RUN_DEPENDS=	devel/py-twisted/web

TRIAL_TARGET=	twisted.lore

.include <bsd.port.mk>
