# $OpenBSD: Makefile,v 1.7 2014/12/15 20:20:28 kili Exp $

COMMENT=		fast HTML combinator library

DISTNAME=		blaze-html-0.7.0.3
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-text>=0.10,<1.3 \
			textproc/hs-blaze-markup>=0.6,<0.7

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
