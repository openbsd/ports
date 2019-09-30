# $OpenBSD: Makefile,v 1.15 2019/09/30 12:58:09 kili Exp $

COMMENT =		random number library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		random-1.1
REVISION =		5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3ypV4EIycgb35PKjTYYr5q

.include <bsd.port.mk>
