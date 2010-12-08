# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 12:44:04 jasper Exp $

COMMENT=		low-level bindings to the zlib package

DISTNAME=		zlib-bindings-0.0.0
CATEGORIES=		archivers

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
