# $OpenBSD: Makefile,v 1.13 2019/09/30 12:02:00 kili Exp $

COMMENT =		streaming data processing library

DISTNAME =		conduit-1.3.1.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	cnYXgMJYlr69D7uE92SrV

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.6 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-monad-control \
			devel/hs-primitive \
			devel/hs-resourcet>=1.2,<1.3 \
			devel/hs-unliftio-core \
			devel/hs-mono-traversable>=1.0.7 \
			devel/hs-transformers-base>=0.4.1,<0.5 \
			devel/hs-transformers-compat>=0.3 \
			devel/hs-void>=0.5.5

.include <bsd.port.mk>
