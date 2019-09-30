# $OpenBSD: Makefile,v 1.5 2019/09/30 12:38:45 kili Exp $

COMMENT =		Wadler/Leijen pretty printer for text values

DISTNAME =		wl-pprint-text-1.2.0.0
CATEGORIES =		devel textproc

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	L6i9Q0yxJZoBCBd4YxCMOZ

RUN_DEPENDS =		devel/hs-base-compat>=0.10
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
