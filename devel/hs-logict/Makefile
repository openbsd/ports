# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:07 espie Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl>=1.0.1,<2.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
