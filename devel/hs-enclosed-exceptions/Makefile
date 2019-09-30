# $OpenBSD: Makefile,v 1.7 2019/09/30 12:58:08 kili Exp $

COMMENT =		catch exceptions from within an enclosed computation

DISTNAME =		enclosed-exceptions-1.0.1.1
REVISION =		4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5axtyggC6DjIxCfhBBeDko

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async>=2.0 \
			devel/hs-lifted-base>=0.2 \
			devel/hs-monad-control \
			devel/hs-transformers-base

.include <bsd.port.mk>
