# $OpenBSD: Makefile,v 1.7 2019/09/30 12:10:33 kili Exp $

COMMENT =		lifted asynchronous IO operations

DISTNAME =		lifted-async-0.10.0.4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7kPQRamQ0Zt603ZzFLDktH

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async>=2.2.1,<2.3 \
			devel/hs-constraints>=0.10,<0.11 \
			devel/hs-lifted-base>=0.2,<0.3 \
			devel/hs-monad-control>=1.0,<1.1 \
			devel/hs-transformers-base>=0.4,<0.5

.include <bsd.port.mk>
