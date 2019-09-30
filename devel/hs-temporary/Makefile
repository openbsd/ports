# $OpenBSD: Makefile,v 1.5 2019/09/30 12:58:10 kili Exp $

COMMENT =		portable temporary file and directory support

DISTNAME =		temporary-1.2.1.1
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	L8AD0JvlPdyGisjg25CQN7

RUN_DEPENDS =		devel/hs-exceptions>=0.6

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
