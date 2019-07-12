# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:28 sthen Exp $

COMMENT =		library dealing with zip archives

DISTNAME =		zip-archive-0.2.3.7
REVISION =		2
CATEGORIES =		archivers devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KKpluOh2rfxHQP3RVsnoLF

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/hs-zlib \
		devel/hs-mtl \
		devel/hs-old-time \
		devel/hs-text>=0.11 \
		security/hs-digest>=0.0.0.1

.include <bsd.port.mk>
