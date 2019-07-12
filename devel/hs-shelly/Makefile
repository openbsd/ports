# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:34 sthen Exp $

COMMENT =		shell-like programming in Haskell

DISTNAME =		shelly-1.6.8.4
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BytCBCREPen574AiJwh3sk

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async \
			devel/hs-enclosed-exceptions \
			devel/hs-exceptions>=0.6,<0.9 \
			devel/hs-lifted-async \
			devel/hs-monad-control>=0.3.2,<1.1 \
			devel/hs-system-fileio<0.4 \
			devel/hs-system-filepath>=0.4.7,<0.5 \
			devel/hs-text \
			devel/hs-transformers-base \
			devel/hs-unix-compat<0.5

.include <bsd.port.mk>
