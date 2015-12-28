# $OpenBSD: Makefile,v 1.8 2015/12/28 12:51:57 kili Exp $

COMMENT =		lift computations from the bottom of a transformer stack

DISTNAME =		transformers-base-0.4.4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	GEeDj980gLF9zrP5uK3QX8

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-stm>=2.3 \
			devel/hs-transformers-compat>=0.2

.include <bsd.port.mk>
