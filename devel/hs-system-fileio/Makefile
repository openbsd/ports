# $OpenBSD: Makefile,v 1.1.1.1 2016/02/01 14:21:29 kili Exp $

COMMENT =		consistent filesystem interaction

DISTNAME =		system-fileio-0.3.16.3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4tkvjHzcsMG3koTvGYTVvg

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-system-filepath>=0.3.1,<0.5 \
			devel/hs-text>=0.7.1

.include <bsd.port.mk>
