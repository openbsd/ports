# $OpenBSD: Makefile,v 1.1.1.1 2019/09/30 11:32:04 kili Exp $

COMMENT = 		type classes for working with monomorphic containers

DISTNAME =		mono-traversable-1.0.12.0
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY = 	7kQraaJmrthKKIggzanB7W

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-hashable \
			devel/hs-split>=0.2 \
			devel/hs-unordered-containers>=0.2 \
			devel/hs-vector>=0.10 \
			devel/hs-vector-algorithms>=0.6

.include <bsd.port.mk>
