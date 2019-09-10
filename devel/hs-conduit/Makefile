# $OpenBSD: Makefile,v 1.12 2019/09/10 13:51:23 kili Exp $

COMMENT =		streaming data processing library

DISTNAME =		conduit-1.2.12.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CxYEwrzwBJqKN5k9tHPTeG

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.6 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-monad-control \
			devel/hs-mtl \
			devel/hs-primitive \
			devel/hs-resourcet>=1.1,<1.2 \
			devel/hs-text>=0.11 \
			devel/hs-transformers-base>=0.4.1,<0.5 \
			devel/hs-transformers-compat>=0.3 \
			devel/hs-void>=0.5.5

.include <bsd.port.mk>
