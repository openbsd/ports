# $OpenBSD: Makefile,v 1.8 2014/09/08 17:04:50 jasper Exp $

COMMENT=		DSL for embedded hard realtime applications

DISTNAME=		atom-1.0.9
REVISION =		3
CATEGORIES=		devel lang

# BSD3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-bimap \
			devel/hs-mtl \
			devel/hs-syb

.include <bsd.port.mk>
