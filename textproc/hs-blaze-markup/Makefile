# $OpenBSD: Makefile,v 1.5 2013/07/19 06:50:43 kili Exp $

COMMENT=		fast markup combinator library

DISTNAME=		blaze-markup-0.5.1.5
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-text>=0.10,<0.12

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
