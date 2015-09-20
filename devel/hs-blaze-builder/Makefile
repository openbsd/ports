# $OpenBSD: Makefile,v 1.14 2015/09/20 16:23:19 kili Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.3.3.4
REVISION=		0
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	AMA6HdJRhgJDXFwXc6WHY1

RUN_DEPENDS =		devel/hs-text>=0.10,<1.3
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
