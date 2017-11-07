# $OpenBSD: Makefile,v 1.23 2017/11/07 21:18:32 kili Exp $

COMMENT =		parallel programming library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		parallel-3.2.1.0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6VcN0yUHtcs831TgbJiSSi

.include <bsd.port.mk>
