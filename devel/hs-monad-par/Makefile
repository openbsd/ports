# $OpenBSD: Makefile,v 1.4 2014/12/15 20:02:20 kili Exp $

COMMENT =		parallel programming based on a monad

DISTNAME =		monad-par-0.3.4.7
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-abstract-deque>=0.1.4 \
			devel/hs-abstract-par \
			devel/hs-monad-par-extras>=0.3 \
			devel/hs-mtl>=2.0.1.0 \
			devel/hs-parallel>=3.1 \
			security/hs-mwc-random>=0.11

.include <bsd.port.mk>
