# $OpenBSD: Makefile,v 1.12 2015/09/20 18:29:20 kili Exp $

COMMENT=		low-level bindings to the zlib package

DISTNAME=		zlib-bindings-0.1.1.3
REVISION =		1
CATEGORIES=		archivers

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7wIS0HLHNs2G2LBKDACmMA

RUN_DEPENDS =		archivers/hs-zlib>=0.5.2.0
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
