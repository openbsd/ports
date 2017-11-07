# $OpenBSD: Makefile,v 1.17 2017/11/07 22:02:37 kili Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.3.3.4
REVISION=		3
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BEDsTiDxHAM1iq49EQMQs4

RUN_DEPENDS =		devel/hs-text>=0.10,<1.3
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
