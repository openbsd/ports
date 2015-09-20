# $OpenBSD: Makefile,v 1.8 2015/09/20 16:23:20 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.9.2
REVISION =		1
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Co88rZrzkz87lOUOGbovh0

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
