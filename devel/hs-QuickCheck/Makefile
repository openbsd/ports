# $OpenBSD: Makefile,v 1.20 2013/07/18 21:44:52 kili Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.6
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-random

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
