# $OpenBSD: Makefile,v 1.1.1.1 2013/07/18 20:41:45 kili Exp $

COMMENT =		random-number generation monad

DISTNAME =		MonadRandom-0.1.9
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-random \
			devel/hs-transformers

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
