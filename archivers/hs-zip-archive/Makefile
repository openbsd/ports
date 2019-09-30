# $OpenBSD: Makefile,v 1.7 2019/09/30 11:47:09 kili Exp $

COMMENT =		library dealing with zip archives

DISTNAME =		zip-archive-0.3.2.5
CATEGORIES =		archivers devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	AND8kToKFSLE8wJzfgI6S2

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/hs-zlib \
		devel/hs-old-time \
		security/hs-digest>=0.0.0.1

.include <bsd.port.mk>
