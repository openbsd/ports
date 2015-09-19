# $OpenBSD: Makefile,v 1.20 2015/09/19 07:59:19 kili Exp $

COMMENT =		Monadic parser combinators

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		parsec-3.1.9
CATEGORIES =		devel
HOMEPAGE =		http://www.cs.uu.nl/~daan/parsec.html

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8fSmqig53hOL2SEu1k9Tv0

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<1.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
