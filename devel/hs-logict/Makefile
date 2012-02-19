# $OpenBSD: Makefile,v 1.2 2012/02/19 20:40:22 kili Exp $

COMMENT =		backtracking logic-programming monad

DISTNAME =		logict-0.5.0
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
