# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:07 espie Exp $

COMMENT =		combinators and extra features for Par monads

DISTNAME =		monad-par-extras-0.3.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-abstract-par>=0.3 \
			devel/hs-cereal>=0.3 \
			devel/hs-mtl>=2.0 \
			devel/hs-random>=1.0 \
			devel/hs-transformers>=0.2

.include <bsd.port.mk>
