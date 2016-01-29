# $OpenBSD: Makefile,v 1.26 2016/01/29 20:28:08 kili Exp $

COMMENT =	Haskell code colourizer

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =	hscolour-1.23
REVISION =	1
# Rip off the hs- prefix, even if it contains a Haskell library.
PKGNAME =	${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	cabal hackage haddock register

MODGHC_PACKAGE_KEY =	D9eX1LEa8SaE1RFFjW0myg

.include <bsd.port.mk>
