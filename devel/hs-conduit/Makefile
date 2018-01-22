# $OpenBSD: Makefile,v 1.10 2018/01/22 21:40:32 kili Exp $

COMMENT =		streaming data processing library

DISTNAME =		conduit-1.2.12.1
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

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
