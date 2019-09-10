# $OpenBSD: Makefile,v 1.13 2019/09/10 13:51:27 kili Exp $

COMMENT =		lift computations from the bottom of a transformer stack

DISTNAME =		transformers-base-0.4.4
REVISION =		3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	G4HvRd1GUcNGvZj70uX60w

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-stm>=2.3 \
			devel/hs-transformers-compat>=0.2

.include <bsd.port.mk>
