# $OpenBSD: Makefile,v 1.11 2014/11/22 20:28:30 kili Exp $

BROKEN =		conflicts with lang/ghc

COMMENT =		concrete monad transformers

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		transformers-0.3.0.0
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
