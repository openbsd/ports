# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:08 espie Exp $

COMMENT =		DrIFT with pugs-specific rules

DISTNAME =		pugs-DrIFT-2.2.3.20120203
REVISION =		3
CATEGORIES =		devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HsSyck \
			devel/hs-mtl>=0,<2.2.0.0 \
			devel/hs-random \
			devel/hs-stm

.include <bsd.port.mk>
