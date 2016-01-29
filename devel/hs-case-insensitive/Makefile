# $OpenBSD: Makefile,v 1.13 2016/01/29 20:28:07 kili Exp $

COMMENT =		case insensitive string comparison

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		case-insensitive-1.2.0.5
REVISION =		0
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
