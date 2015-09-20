# $OpenBSD: Makefile,v 1.8 2015/09/20 15:13:35 kili Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0.2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1iHNtOOGGglHyK9qFDuKF5

RUN_DEPENDS =		devel/hs-mtl>=1.0.1,<2.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
