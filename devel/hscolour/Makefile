# $OpenBSD: Makefile,v 1.23 2015/09/19 08:14:34 kili Exp $

COMMENT =	Haskell code colourizer

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =	hscolour-1.23
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EJexJqI9GfgFt4RFwk98PU

.include <bsd.port.mk>
