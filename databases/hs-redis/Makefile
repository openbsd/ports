# $OpenBSD: Makefile,v 1.3 2011/04/23 14:32:50 kili Exp $

COMMENT =		Haskell driver for Redis

DISTNAME =		redis-0.10.1
REVISION =		1
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadCatchIO-mtl \
			devel/hs-mtl \
			devel/hs-network
BUILD_DEPENDS +=	${RUN_DEPENDS}

# avoid possible conflict with the databases/redis distfile
DIST_SUBDIR =		hs-redis

.include <bsd.port.mk>
