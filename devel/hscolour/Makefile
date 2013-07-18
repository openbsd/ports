# $OpenBSD: Makefile,v 1.20 2013/07/18 22:30:10 kili Exp $

COMMENT =	Haskell code colourizer

DISTNAME =	hscolour-1.20.3
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

.include <bsd.port.mk>
