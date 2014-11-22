# $OpenBSD: Makefile,v 1.9 2014/11/22 20:45:13 kili Exp $

COMMENT =		case insensitive string comparison

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		case-insensitive-1.1.0.3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.3 \
			devel/hs-text>=0.3,<1.2

.include <bsd.port.mk>
