# $OpenBSD: Makefile,v 1.9 2014/12/14 10:21:40 kili Exp $

COMMENT=		DSL for embedded hard realtime applications

DISTNAME=		atom-1.0.12
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
