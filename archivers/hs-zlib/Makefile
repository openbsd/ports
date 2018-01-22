# $OpenBSD: Makefile,v 1.25 2018/01/22 21:36:14 kili Exp $

COMMENT =		zlib bindings for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		zlib-0.5.4.2
REVISION =		3
CATEGORIES =		archivers devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	F6BHJqwkis53HpMy7MLAqK

.include <bsd.port.mk>
