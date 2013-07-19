# $OpenBSD: Makefile,v 1.8 2013/07/19 06:58:22 kili Exp $

COMMENT =		Comonad transformers

DISTNAME =		comonad-transformers-3.0.3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-comonad>=3.0 \
			devel/hs-contravariant>=0.2.0.1 \
			devel/hs-distributive>=0.2.2 \
			devel/hs-semigroupoids>=3.0 \
			devel/hs-semigroups>=0.8.3.1 \
			devel/hs-transformers>=0.2,<0.4 \

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
