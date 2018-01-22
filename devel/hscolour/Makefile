# $OpenBSD: Makefile,v 1.29 2018/01/22 21:43:46 kili Exp $

COMMENT =	Haskell code colourizer

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =	hscolour-1.24
REVISION =	0

# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c iconv m

MODULES =	lang/ghc
MODGHC_BUILD =	cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2INJ3Qyba2w3oVHuiH7YLO

LIB_DEPENDS =	converters/libiconv

.include <bsd.port.mk>
