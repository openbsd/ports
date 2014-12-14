# $OpenBSD: Makefile,v 1.7 2014/12/14 10:44:22 kili Exp $

COMMENT =		utilities for Data.Lens

DISTNAME =		data-lens-template-2.1.8
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-data-lens>=2.0,<2.11
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
