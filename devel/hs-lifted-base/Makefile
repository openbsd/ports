# $OpenBSD: Makefile,v 1.12 2019/09/30 12:58:09 kili Exp $

COMMENT =		lifted IO operations from the base library

DISTNAME =		lifted-base-0.2.3.6
REVISION =		4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	918mEcUNLdGJqq8W2JWxxw

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-monad-control>=0.3,<1.1 \
			devel/hs-transformers-base>=0.4,<0.5

.include <bsd.port.mk>
