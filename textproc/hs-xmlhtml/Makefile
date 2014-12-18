# $OpenBSD: Makefile,v 1.7 2014/12/18 21:13:58 kili Exp $

COMMENT=		XML parser and renderer with HTML 5 quirks mode

DISTNAME=		xmlhtml-0.2.3.3
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-parsec>=3.1.2,<3.2 \
			devel/hs-text>=0.11,<1.3 \
			devel/hs-unordered-containers>=0.1.4,<0.3 \
			textproc/hs-blaze-html>=0.5,<0.8 \
			textproc/hs-blaze-markup>=0.5,<0.7

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
