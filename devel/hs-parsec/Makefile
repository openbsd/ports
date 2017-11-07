# $OpenBSD: Makefile,v 1.25 2017/11/07 22:17:48 kili Exp $

COMMENT =		Monadic parser combinators

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		parsec-3.1.9
REVISION =		3
CATEGORIES =		devel
HOMEPAGE =		https://github.com/aslatter/parsec

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DcQEV7HEPYVIqQc0KjARvh

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<1.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
