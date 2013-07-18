# $OpenBSD: Makefile,v 1.11 2013/07/18 22:07:18 kili Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.3.1.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.10,<0.13
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
