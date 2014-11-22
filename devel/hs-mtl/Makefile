# $OpenBSD: Makefile,v 1.10 2014/11/22 20:47:28 kili Exp $

COMMENT =		monad classes using functional dependencies

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		mtl-2.1.3.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
