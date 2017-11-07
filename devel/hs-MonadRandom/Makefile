# $OpenBSD: Makefile,v 1.6 2017/11/07 22:00:13 kili Exp $

COMMENT =		random-number generation monad

DISTNAME =		MonadRandom-0.1.9
REVISION =		4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4I8kCsMENfe7SOWq9wN1KR

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-random

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
