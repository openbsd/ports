# $OpenBSD: Makefile,v 1.27 2017/11/07 22:00:46 kili Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.8.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	B7cXgOk7OAiKrNRsk2SfuA

RUN_DEPENDS =		devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-random \
			devel/hs-tf-random>=0.4

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
