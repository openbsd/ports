# $OpenBSD: Makefile,v 1.3 2015/12/29 18:14:39 kili Exp $

COMMENT =		high-performance striped resource pooling implementation

DISTNAME =		resource-pool-0.2.1.1
REVISION =		1
CATEGORIES =		databases devel
HOMEPAGE =		https://github.com/bos/pool

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CIunqs5NwMc7wWAdKE2fMh

RUN_DEPENDS +=		devel/hs-hashable \
			devel/hs-monad-control>=0.2.0.1 \
			devel/hs-transformers-base>=0.4 \
			devel/hs-stm \
			devel/hs-vector>=0.7

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
