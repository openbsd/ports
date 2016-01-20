# $OpenBSD: Makefile,v 1.11 2016/01/20 16:22:29 kili Exp $

COMMENT =		efficient hashing-based container types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		unordered-containers-0.2.5.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A6bVq0vdIMX7egYGM1u3oi

RUN_DEPENDS =		devel/hs-hashable>=1.0.1.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
