# $OpenBSD: Makefile,v 1.11 2017/11/07 22:14:44 kili Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0.2
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9jBTPojR7TK4sama5iHCRg

RUN_DEPENDS =		devel/hs-mtl>=1.0.1,<2.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
