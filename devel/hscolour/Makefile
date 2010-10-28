# $OpenBSD: Makefile,v 1.10 2010/10/28 13:51:48 jasper Exp $

COMMENT =	Haskell code colourizer

DISTNAME =	hscolour-1.17
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://www.cs.york.ac.uk/fp/darcs/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c gmp m pthread util

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

.include <bsd.port.mk>
