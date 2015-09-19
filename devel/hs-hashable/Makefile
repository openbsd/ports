# $OpenBSD: Makefile,v 1.10 2015/09/19 07:55:57 kili Exp $

COMMENT =		class for hashable data types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		hashable-1.2.3.3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2GTZqecVp8NJZrNuKzGxfy

RUN_DEPENDS =		devel/hs-text>=0.11.0.5
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
