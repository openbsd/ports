# $OpenBSD: Makefile,v 1.8 2014/11/27 21:45:37 kili Exp $

COMMENT =		Haskell 98 semigroupoids

DISTNAME =		semigroupoids-3.0.3
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-comonad>=3,<4 \
			devel/hs-contravariant>=0.2.0.1,<1 \
			devel/hs-semigroups>=0.8.3.1,<1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
