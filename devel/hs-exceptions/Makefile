# $OpenBSD: Makefile,v 1.2 2015/12/20 11:30:36 kili Exp $

COMMENT =		extensible optionally-pure exceptions

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		exceptions-0.8.0.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	AlkbojO7h230I6BF1FJiv8

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl>=2.0,<2.3 \
			devel/hs-stm>=2.2,<3 \
    			devel/hs-transformers-compat>=0.3,<0.5

.include <bsd.port.mk>
