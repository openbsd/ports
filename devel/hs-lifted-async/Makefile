# $OpenBSD: Makefile,v 1.3 2017/11/07 22:14:05 kili Exp $

COMMENT =		lifted asynchronous IO operations

DISTNAME =		lifted-async-0.8.0.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KilkeRHS5SdGMlM8EGj3Rr

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async>=2.0.1,<2.2 \
			devel/hs-constraints>=0.2,<0.9 \
			devel/hs-lifted-base>=0.2,<0.3 \
			devel/hs-monad-control>=1.0,<1.1 \
			devel/hs-transformers-base>=0.4,<0.5

.include <bsd.port.mk>
