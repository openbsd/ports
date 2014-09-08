# $OpenBSD: Makefile,v 1.12 2014/09/08 17:04:50 jasper Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.3.1.1
CATEGORIES=		devel
REVISION=		0

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.10,<0.13
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
