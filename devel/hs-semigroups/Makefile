# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:34 sthen Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.9.2
REVISION =		5
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KyCDFOYQ0vPI7UucE0fVIk

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
