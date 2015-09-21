# $OpenBSD: Makefile,v 1.7 2015/09/21 20:36:54 kili Exp $

BROKEN =		needs an update

COMMENT=		fast markup combinator library

DISTNAME=		blaze-markup-0.6.1.1
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-text>=0.10,<1.3

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
