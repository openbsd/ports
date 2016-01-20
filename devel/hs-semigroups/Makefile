# $OpenBSD: Makefile,v 1.10 2016/01/20 16:22:28 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.9.2
REVISION =		3
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DnZJmLNfSzXDsN73DUocuz

RUN_DEPENDS +=		devel/hs-nats>=0.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
