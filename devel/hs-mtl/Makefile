# $OpenBSD: Makefile,v 1.16 2018/01/22 21:42:27 kili Exp $

COMMENT =		monad classes using functional dependencies

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		mtl-2.2.1
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DscMMmDQUE6GBfOSl4qMUH

.include <bsd.port.mk>
