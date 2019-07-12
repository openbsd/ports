# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:35 sthen Exp $

COMMENT =		portable temporary file and directory support

DISTNAME =		temporary-1.2.1.1
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EaGJD8l9MwE6FMqsytxEjz

RUN_DEPENDS =		devel/hs-exceptions>=0.6

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
