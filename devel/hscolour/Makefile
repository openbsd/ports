# $OpenBSD: Makefile,v 1.27 2016/09/13 14:40:30 naddy Exp $

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

WANTLIB =	c iconv m

MODULES =	lang/ghc
MODGHC_BUILD =	cabal hackage haddock register

MODGHC_PACKAGE_KEY =	D9eX1LEa8SaE1RFFjW0myg

LIB_DEPENDS =	converters/libiconv

.include <bsd.port.mk>
