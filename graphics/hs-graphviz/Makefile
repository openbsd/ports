# $OpenBSD: Makefile,v 1.1.1.1 2017/11/20 19:23:58 kili Exp $

COMMENT =		graphviz bindings

# An update to 2999.19.* would break darcs-2.12.5.
PORTROACH =		limit:^2999\.18\.

DISTNAME =		graphviz-2999.18.1.2
CATEGORIES =		devel graphics

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6QJQfM18psU1jls4H59LwT

RUN_DEPENDS =		devel/hs-dlist>=0.5,<0.9 \
			devel/hs-fgl>=5.4,<5.6 \
			devel/hs-temporary>=1.1,<1.3 \
			devel/hs-text \
			graphics/hs-colour>=2.3.0,<2.4 \
			textproc/hs-polyparse>=1.9,<1.13 \
			textproc/hs-wl-pprint-text>=1.1.0.0,<1.2.0.0

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
