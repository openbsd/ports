# $OpenBSD: Makefile,v 1.17 2012/10/28 23:29:51 kili Exp $

COMMENT =	Haskell code colourizer

DISTNAME =	hscolour-1.19
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
REVISION=	2
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
