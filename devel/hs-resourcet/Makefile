# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:34 sthen Exp $

COMMENT =		deterministic allocation and freeing of scarce resources

DISTNAME =		resourcet-1.1.9
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8HtEAe2QUDa6ID1wWHBD

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.5 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-monad-control>=0.3.1,<1.1 \
			devel/hs-mtl>=2.0,<2.3 \
			devel/hs-transformers-base>=0.4.4,<0.5 \
			devel/hs-transformers-compat>=0.3,<0.6

.include <bsd.port.mk>
