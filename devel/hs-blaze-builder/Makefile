# $OpenBSD: Makefile,v 1.18 2018/01/22 21:40:32 kili Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.3.3.4
REVISION=		4
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4PfIfOHJSEOEuUdii8hZBg

RUN_DEPENDS =		devel/hs-text>=0.10,<1.3
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
