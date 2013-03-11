# $OpenBSD: Makefile,v 1.14 2013/03/11 02:52:05 espie Exp $

COMMENT =		Haskell driver for Redis

DISTNAME =		redis-0.13
REVISION =		2
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadCatchIO-mtl \
			devel/hs-concurrent-extra \
			devel/hs-mtl \
			devel/hs-network
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
