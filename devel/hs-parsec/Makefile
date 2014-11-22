# $OpenBSD: Makefile,v 1.19 2014/11/22 20:49:28 kili Exp $

COMMENT =		Monadic parser combinators

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		parsec-3.1.5
CATEGORIES =		devel
HOMEPAGE =		http://www.cs.uu.nl/~daan/parsec.html

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<1.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
