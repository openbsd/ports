# $OpenBSD: Makefile,v 1.4 2016/01/29 20:28:08 kili Exp $

COMMENT =		compat lib exposing transformers 0.3 and 0.4 types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		transformers-compat-0.4.0.4
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HLoEtsQxMvo5lni62P8VpB

.include <bsd.port.mk>
