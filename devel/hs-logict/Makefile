# $OpenBSD: Makefile,v 1.7 2014/11/25 22:11:04 kili Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0.1
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl>=1.0.1,<2.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
