# $OpenBSD: Makefile,v 1.6 2013/07/18 21:52:57 kili Exp $

COMMENT =		efficient hashing-based container types

DISTNAME =		unordered-containers-0.2.3.0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-hashable>=1.0.1.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
