# $OpenBSD: Makefile,v 1.24 2017/11/07 21:00:11 kili Exp $

COMMENT =		zlib bindings for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		zlib-0.5.4.2
REVISION =		2
CATEGORIES =		archivers devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	C2rXIM8kVg68AvfBaSbvMz

.include <bsd.port.mk>
