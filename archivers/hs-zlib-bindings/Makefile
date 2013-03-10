# $OpenBSD: Makefile,v 1.9 2013/03/10 22:28:04 espie Exp $

COMMENT=		low-level bindings to the zlib package

DISTNAME=		zlib-bindings-0.1.0.1
REVISION =		1
CATEGORIES=		archivers

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib>=0.5.2.0,<0.6
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
