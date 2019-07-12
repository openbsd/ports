# $OpenBSD: Makefile,v 1.22 2019/07/12 20:50:46 sthen Exp $

COMMENT =		HTML combinator library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		html-1.0.1.2
REVISION =		15
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HJx3nTTgwhH7I2VQDflUHM

.include <bsd.port.mk>
