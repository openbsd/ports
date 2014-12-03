# $OpenBSD: Makefile,v 1.4 2014/12/03 21:56:44 kili Exp $

COMMENT =		combinators and extra features for Par monads

DISTNAME =		monad-par-extras-0.3.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-abstract-par>=0.3 \
			devel/hs-cereal>=0.3 \
			devel/hs-mtl>=2.0 \
			devel/hs-random>=1.0

.include <bsd.port.mk>
