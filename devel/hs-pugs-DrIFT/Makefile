# $OpenBSD: Makefile,v 1.17 2014/12/18 20:26:35 kili Exp $

BROKEN =		does not compile with ghc-7.8

COMMENT =		DrIFT with pugs-specific rules

DISTNAME =		pugs-DrIFT-2.2.3.20130611
CATEGORIES =		devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HsSyck \
			devel/hs-mtl>=2.0.0.0 \
			devel/hs-random \
			devel/hs-stm

.include <bsd.port.mk>
