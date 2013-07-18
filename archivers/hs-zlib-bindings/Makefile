# $OpenBSD: Makefile,v 1.10 2013/07/18 22:12:55 kili Exp $

COMMENT=		low-level bindings to the zlib package

DISTNAME=		zlib-bindings-0.1.1.3
CATEGORIES=		archivers

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib>=0.5.2.0
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
