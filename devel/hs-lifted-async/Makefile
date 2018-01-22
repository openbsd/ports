# $OpenBSD: Makefile,v 1.4 2018/01/22 22:02:19 kili Exp $

COMMENT =		lifted asynchronous IO operations

DISTNAME =		lifted-async-0.9.3.2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IrwcdzP2aQJF6LuP6lUpto

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async>=2.0.1,<2.2 \
			devel/hs-constraints>=0.2,<0.10 \
			devel/hs-lifted-base>=0.2,<0.3 \
			devel/hs-monad-control>=1.0,<1.1 \
			devel/hs-transformers-base>=0.4,<0.5

.include <bsd.port.mk>
