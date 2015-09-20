# $OpenBSD: Makefile,v 1.10 2015/09/20 21:08:56 kili Exp $

BROKEN =		needs update, not used by anythinb useful

COMMENT =		Haskell 98 comonads

DISTNAME =		comonad-3.0.3
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-semigroups>=0.8.3,<1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
