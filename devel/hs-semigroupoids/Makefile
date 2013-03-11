# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:08 espie Exp $

COMMENT =		Haskell 98 semigroupoids

DISTNAME =		semigroupoids-1.3.4
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-comonad>=1.1.1.5,<1.2 \
			devel/hs-contravariant>=0.2.0.1,<0.3 \
			devel/hs-semigroups>=0.8.3.1,<0.9 \
			devel/hs-transformers>=0.2,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
