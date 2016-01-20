# $OpenBSD: Makefile,v 1.12 2016/01/20 16:22:26 kili Exp $

COMMENT =		class for hashable data types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		hashable-1.2.3.3
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ESoMujpGY6DK6X3JJiQzUF

RUN_DEPENDS =		devel/hs-text>=0.11.0.5
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
