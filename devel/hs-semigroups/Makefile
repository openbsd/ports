# $OpenBSD: Makefile,v 1.11 2017/11/07 22:21:22 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.9.2
REVISION =		4
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	GCXiREeL7VGD9EuOR4zASp

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
