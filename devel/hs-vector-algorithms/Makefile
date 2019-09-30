# $OpenBSD: Makefile,v 1.12 2019/09/30 11:39:44 kili Exp $

COMMENT =		efficient algorithms for vector arrays

DISTNAME =		vector-algorithms-0.8.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY = 	7vdfxmytFg1aLO2PtO4J8

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =	devel/hs-tagged>=0.4,<0.9 \
		devel/hs-vector>=0.6,<0.13


.include <bsd.port.mk>
