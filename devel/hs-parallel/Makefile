# $OpenBSD: Makefile,v 1.18 2014/11/22 20:48:48 kili Exp $

COMMENT =		parallel programming library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		parallel-3.2.0.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
