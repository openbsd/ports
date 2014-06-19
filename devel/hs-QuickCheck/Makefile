# $OpenBSD: Makefile,v 1.21 2014/06/19 18:58:01 kili Exp $

COMMENT =		automatic testing of Haskell programs

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		QuickCheck-2.6
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-random

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
