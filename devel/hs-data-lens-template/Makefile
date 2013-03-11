# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:07 espie Exp $

COMMENT =		utilities for Data.Lens

DISTNAME =		data-lens-template-2.1.5
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-data-lens>=2.0,<2.11
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
