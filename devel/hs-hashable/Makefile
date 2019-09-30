# $OpenBSD: Makefile,v 1.18 2019/09/30 12:08:54 kili Exp $

COMMENT =		class for hashable data types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		hashable-1.2.7.0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CWI8VZuQTAYWIQTQQtqCV

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
