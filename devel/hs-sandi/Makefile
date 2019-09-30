# $OpenBSD: Makefile,v 1.9 2019/09/30 12:18:46 kili Exp $

COMMENT =		data encoding library

DISTNAME =		sandi-0.5
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IzshKkho05BGGpyRzAGPU7

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-conduit>=1.2,<1.4 \
			devel/hs-exceptions>=0.10,<0.11

.include <bsd.port.mk>
