# $OpenBSD: Makefile,v 1.2 2018/04/14 19:47:43 kili Exp $

COMMENT =		JSON library

DISTNAME =		json-0.9.2
CATEGORIES =		textproc

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7rB8qNGKE8tQN0WTAH0G5

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-syb>=0.3.3 \
			devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
