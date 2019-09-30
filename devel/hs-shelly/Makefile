# $OpenBSD: Makefile,v 1.7 2019/09/30 12:20:41 kili Exp $

COMMENT =		shell-like programming in Haskell

DISTNAME =		shelly-1.8.0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2QIQhEOMa1EJcpCwBLpNoW

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async \
			devel/hs-enclosed-exceptions \
			devel/hs-exceptions>=0.6,<0.11 \
			devel/hs-lifted-async \
			devel/hs-monad-control>=0.3.2,<1.1 \
			devel/hs-system-fileio<0.4 \
			devel/hs-system-filepath>=0.4.7,<0.5 \
			devel/hs-transformers-base \
			devel/hs-unix-compat<0.5

.include <bsd.port.mk>
