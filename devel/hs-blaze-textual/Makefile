# $OpenBSD: Makefile,v 1.6 2014/12/02 20:45:23 kili Exp $

COMMENT =		fast rendering of common datatypes

DISTNAME =		blaze-textual-0.2.0.8
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4 \
			devel/hs-text>=0.11.0.2 \
			devel/hs-vector
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
