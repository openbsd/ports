# $OpenBSD: Makefile,v 1.8 2017/11/07 22:01:34 kili Exp $

COMMENT =		abstract, parameterized interface to mutable deques

DISTNAME =		abstract-deque-0.1.6
REVISION =		5
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	nZb6ymrSmlGO9gFXtOvTx

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HUnit

.include <bsd.port.mk>
