# $OpenBSD: Makefile,v 1.18 2013/01/20 18:04:22 kili Exp $

COMMENT =	Haskell code colourizer

DISTNAME =	hscolour-1.19
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
REVISION=	3
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

.include <bsd.port.mk>
