# $OpenBSD: Makefile,v 1.7 2014/11/27 21:45:37 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.9.2
REVISION =		0
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
