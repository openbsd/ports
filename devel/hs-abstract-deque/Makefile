# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:06 espie Exp $

COMMENT =		abstract, parameterized interface to mutable deques

DISTNAME =		abstract-deque-0.1.6
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HUnit

.include <bsd.port.mk>
