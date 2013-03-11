# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:06 espie Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.5.1.1
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-random

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
