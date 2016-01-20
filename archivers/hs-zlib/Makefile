# $OpenBSD: Makefile,v 1.22 2016/01/20 16:15:45 kili Exp $

COMMENT =		zlib bindings for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		zlib-0.5.4.2
REVISION =		1
CATEGORIES =		archivers devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KhrLrSZSsjD5l0kgY5QHUE

.include <bsd.port.mk>
