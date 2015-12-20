# $OpenBSD: Makefile,v 1.9 2015/12/20 11:27:22 kili Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6DFOfbxuDUzFZeqG5i35lj

RUN_DEPENDS =		devel/hs-mtl>=1.0.1,<2.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
