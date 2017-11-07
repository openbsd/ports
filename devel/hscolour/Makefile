# $OpenBSD: Makefile,v 1.28 2017/11/07 21:31:02 kili Exp $

COMMENT =	Haskell code colourizer

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =	hscolour-1.24

# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c iconv m

MODULES =	lang/ghc
MODGHC_BUILD =	cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3jesLsp8VQaC4mEWcyDFsm

LIB_DEPENDS =	converters/libiconv

.include <bsd.port.mk>
