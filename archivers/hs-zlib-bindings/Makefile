# $OpenBSD: Makefile,v 1.13 2015/12/20 11:15:21 kili Exp $

COMMENT=		low-level bindings to the zlib package

DISTNAME=		zlib-bindings-0.1.1.3
REVISION =		2
CATEGORIES=		archivers

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CYIxRZisdinDz5sIRxOW1W

RUN_DEPENDS =		archivers/hs-zlib>=0.5.2.0
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
