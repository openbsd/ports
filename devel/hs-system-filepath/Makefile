# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:35 sthen Exp $

COMMENT =		file and directory path manipulations

DISTNAME =		system-filepath-0.4.13.4
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HlTEdgeDuJQ1GDF1a7tDCx

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-text>=0.11.0.6

.include <bsd.port.mk>
