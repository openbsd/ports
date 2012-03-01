# $OpenBSD: Makefile,v 1.8 2012/03/01 09:27:32 dcoppa Exp $

COMMENT =		Haskell driver for Redis

DISTNAME =		redis-0.12
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

.include <bsd.port.mk>
