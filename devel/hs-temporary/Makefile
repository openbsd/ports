# $OpenBSD: Makefile,v 1.4 2019/09/10 13:51:27 kili Exp $

COMMENT =		portable temporary file and directory support

DISTNAME =		temporary-1.2.1.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EaGJD8l9MwE6FMqsytxEjz

RUN_DEPENDS =		devel/hs-exceptions>=0.6

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
