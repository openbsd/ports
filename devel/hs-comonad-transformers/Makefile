# $OpenBSD: Makefile,v 1.10 2014/12/25 21:42:57 kili Exp $

BROKEN =		deprecated

COMMENT =		Comonad transformers

DISTNAME =		comonad-transformers-3.0.3
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-comonad>=3.0 \
			devel/hs-contravariant>=0.2.0.1 \
			devel/hs-distributive>=0.2.2 \
			devel/hs-semigroupoids>=3.0 \
			devel/hs-semigroups>=0.8.3.1

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
