# $OpenBSD: Makefile,v 1.5 2013/01/20 18:02:12 kili Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl>=1.0.1,<2.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
