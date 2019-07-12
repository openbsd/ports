# $OpenBSD: Makefile,v 1.17 2019/07/12 20:44:13 sthen Exp $

COMMENT =		monad classes using functional dependencies

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		mtl-2.2.1
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DscMMmDQUE6GBfOSl4qMUH

.include <bsd.port.mk>
