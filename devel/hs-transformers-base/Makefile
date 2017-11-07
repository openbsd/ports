# $OpenBSD: Makefile,v 1.10 2017/11/07 22:23:19 kili Exp $

COMMENT =		lift computations from the bottom of a transformer stack

DISTNAME =		transformers-base-0.4.4
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	25SoAegOdaF8rLEnnb5jPI

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-stm>=2.3 \
			devel/hs-transformers-compat>=0.2

.include <bsd.port.mk>
