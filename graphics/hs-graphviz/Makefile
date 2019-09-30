# $OpenBSD: Makefile,v 1.5 2019/09/30 12:30:20 kili Exp $

COMMENT =		graphviz bindings

DISTNAME =		graphviz-2999.20.0.3
CATEGORIES =		devel graphics

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	D2rQESz1Da16nzig0zxnVf

RUN_DEPENDS =		devel/hs-dlist>=0.5,<0.9 \
			devel/hs-fgl>=5.7,<5.8 \
			devel/hs-temporary>=1.1,<1.3 \
			graphics/hs-colour>=2.3.0,<2.4 \
			textproc/hs-polyparse>=1.9,<1.13 \
			textproc/hs-wl-pprint-text>=1.2.0.0,<1.3.0.0

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
