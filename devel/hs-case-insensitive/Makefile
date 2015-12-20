# $OpenBSD: Makefile,v 1.11 2015/12/20 11:06:23 kili Exp $

COMMENT =		case insensitive string comparison

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		case-insensitive-1.2.0.5
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FEOKgbOKlTVG5A7KrFIMjj

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.3 \
			devel/hs-text>=0.3,<1.3

.include <bsd.port.mk>
