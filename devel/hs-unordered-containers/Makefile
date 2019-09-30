# $OpenBSD: Makefile,v 1.16 2019/09/30 11:38:21 kili Exp $

COMMENT =		efficient hashing-based container types

DISTNAME =		unordered-containers-0.2.10.0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY = 	KQjsr7xKC1WHxfEOZ1c65w

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.4

.include <bsd.port.mk>
