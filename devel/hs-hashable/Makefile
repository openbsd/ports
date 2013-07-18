# $OpenBSD: Makefile,v 1.7 2013/07/18 21:46:04 kili Exp $

COMMENT =		class for hashable data types

DISTNAME =		hashable-1.1.2.5
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.11.0.5
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
