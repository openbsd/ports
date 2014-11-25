# $OpenBSD: Makefile,v 1.4 2014/11/25 22:11:03 kili Exp $

COMMENT =		abstract, parameterized interface to mutable deques

DISTNAME =		abstract-deque-0.1.6
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HUnit

.include <bsd.port.mk>
