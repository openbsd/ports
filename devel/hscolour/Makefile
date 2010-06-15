# $OpenBSD: Makefile,v 1.6 2010/06/15 17:59:24 kili Exp $

COMMENT =	Haskell code colourizer

DISTNAME =	hscolour-1.16
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}p3
CATEGORIES =	devel

HOMEPAGE =	http://www.cs.york.ac.uk/fp/darcs/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c gmp m util

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

.include <bsd.port.mk>
