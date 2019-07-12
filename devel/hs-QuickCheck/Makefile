# $OpenBSD: Makefile,v 1.29 2019/07/12 20:44:11 sthen Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.8.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Jgsuiswc1lZAKEXPfsiDSR

RUN_DEPENDS =		devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-random \
			devel/hs-tf-random>=0.4

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
