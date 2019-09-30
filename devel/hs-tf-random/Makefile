# $OpenBSD: Makefile,v 1.9 2019/09/30 12:58:10 kili Exp $

COMMENT =		high-quality splittable PRNG

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		tf-random-0.5
REVISION =		5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IjFVdJXpGgq3hBuRJiaT27

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-primitive>=0.6 \
			devel/hs-random

.include <bsd.port.mk>
