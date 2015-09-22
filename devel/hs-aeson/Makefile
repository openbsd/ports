# $OpenBSD: Makefile,v 1.10 2015/09/22 06:33:41 kili Exp $

COMMENT =		fast JSON parsing and encoding

DISTNAME =		aeson-0.9.0.1
CATEGORIES =		devel

HOMEPAGE =		https://github.com/bos/aeson

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LaL6FxPyYWTJ65H4cVDuqR

RUN_DEPENDS =		devel/hs-dlist>=0.2 \
			devel/hs-hashable>=1.1.2.0 \
			devel/hs-mtl \
			devel/hs-old-locale \
			devel/hs-scientific>=0.3.1,<0.4 \
			devel/hs-syb \
			devel/hs-text>=1.1.1.0 \
			devel/hs-unordered-containers>=0.2.5.0 \
			devel/hs-vector>=0.7.1 \
			textproc/hs-attoparsec>=0.13.0.0
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
