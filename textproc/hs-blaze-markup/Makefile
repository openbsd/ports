# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:41 espie Exp $

COMMENT=		fast markup combinator library

DISTNAME=		blaze-markup-0.5.1.0
REVISION=		2
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-text>=0.10,<0.12

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
