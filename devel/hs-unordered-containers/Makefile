# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:08 espie Exp $

COMMENT =		efficient hashing-based container types

DISTNAME =		unordered-containers-0.1.4.6
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-hashable>=1.0.1.1,<1.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
