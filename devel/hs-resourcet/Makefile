# $OpenBSD: Makefile,v 1.14 2019/09/30 12:17:55 kili Exp $

COMMENT =		deterministic allocation and freeing of scarce resources

DISTNAME =		resourcet-1.2.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DmlZdkLzX278vkyONsp8WQ

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.5 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-monad-control>=0.3.1,<1.1 \
			devel/hs-transformers-base>=0.4.4,<0.5 \
			devel/hs-transformers-compat>=0.3,<0.6 \
			devel/hs-unliftio-core

.include <bsd.port.mk>
