# $OpenBSD: Makefile,v 1.2 2010/04/22 21:56:41 kili Exp $

COMMENT =	Haskell code colourizer

DISTNAME =	hscolour-1.16
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://www.cs.york.ac.uk/fp/darcs/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread util

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

.include <bsd.port.mk>
