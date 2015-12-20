# $OpenBSD: Makefile,v 1.6 2015/12/20 11:24:56 kili Exp $

COMMENT =		abstract, parameterized interface to mutable deques

DISTNAME =		abstract-deque-0.1.6
REVISION =		3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	AnofRaZbe9c6SG5DS1OZJN

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HUnit

.include <bsd.port.mk>
