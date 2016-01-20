# $OpenBSD: Makefile,v 1.5 2016/01/20 16:20:43 kili Exp $

COMMENT =		random-number generation monad

DISTNAME =		MonadRandom-0.1.9
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	H9OqxvZHPdE6ycNVOtqfTf

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-random

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
