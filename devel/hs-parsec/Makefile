# $OpenBSD: Makefile,v 1.26 2018/01/22 21:42:27 kili Exp $

COMMENT =		Monadic parser combinators

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		parsec-3.1.9
REVISION =		4
CATEGORIES =		devel
HOMEPAGE =		https://github.com/aslatter/parsec

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	444fzLM2idQ5vByZuGIOJ

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<1.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
