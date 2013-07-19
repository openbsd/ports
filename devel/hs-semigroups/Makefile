# $OpenBSD: Makefile,v 1.6 2013/07/19 06:59:38 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.9.2
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
