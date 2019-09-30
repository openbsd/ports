# $OpenBSD: Makefile,v 1.14 2019/09/30 12:58:10 kili Exp $

COMMENT =		lift computations from the bottom of a transformer stack

DISTNAME =		transformers-base-0.4.4
REVISION =		4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1mj2e5MR6zr3cRGVEYdRZ3

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-transformers-compat>=0.2

.include <bsd.port.mk>
