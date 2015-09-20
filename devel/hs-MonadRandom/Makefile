# $OpenBSD: Makefile,v 1.3 2015/09/20 18:29:20 kili Exp $

COMMENT =		random-number generation monad

DISTNAME =		MonadRandom-0.1.9
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LJURV1mUK75J7xiHoldw9s

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-random

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
