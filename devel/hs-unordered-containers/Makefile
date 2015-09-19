# $OpenBSD: Makefile,v 1.9 2015/09/19 08:12:16 kili Exp $

COMMENT =		efficient hashing-based container types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		unordered-containers-0.2.5.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7E41cj9RvqSJeZ4jSnbs1a

RUN_DEPENDS =		devel/hs-hashable>=1.0.1.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
