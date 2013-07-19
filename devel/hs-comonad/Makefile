# $OpenBSD: Makefile,v 1.8 2013/07/19 06:56:43 kili Exp $

COMMENT =		Haskell 98 comonads

DISTNAME =		comonad-3.0.3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-semigroups>=0.8.3,<1 \
			devel/hs-transformers>=0.2,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
