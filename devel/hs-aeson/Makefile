# $OpenBSD: Makefile,v 1.6 2013/05/04 21:17:17 kili Exp $

COMMENT =		fast JSON parsing and encoding

DISTNAME =		aeson-0.6.0.2
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4 \
			devel/hs-dlist>=0.2 \
			devel/hs-hashable>=1.1.2.0 \
			devel/hs-mtl \
			devel/hs-syb \
			devel/hs-text>=0.11.1.0 \
			devel/hs-unordered-containers>=0.1.3.0 \
			devel/hs-vector>=0.7.1 \
			textproc/hs-attoparsec>=0.8.6.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
