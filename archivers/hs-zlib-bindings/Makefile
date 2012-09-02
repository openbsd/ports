# $OpenBSD: Makefile,v 1.6 2012/09/02 21:09:16 kili Exp $

COMMENT=		low-level bindings to the zlib package

DISTNAME=		zlib-bindings-0.1.0.1
CATEGORIES=		archivers

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib>=0.5.2.0,<0.6
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
