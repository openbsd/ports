# $OpenBSD: Makefile,v 1.1.1.1 2015/09/11 18:56:38 kili Exp $

COMMENT =		high-quality splittable PRNG

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		tf-random-0.5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	926BwEbiHzi7pBkp4dTxOe

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-primitive>=0.3 \
			devel/hs-random

.include <bsd.port.mk>
