# $OpenBSD: Makefile,v 1.15 2019/09/30 12:19:49 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.18.5
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6T2lH5F6zyQIdwR3JYKMO3

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
