# $OpenBSD: Makefile,v 1.7 2011/12/28 09:29:36 kili Exp $

COMMENT =		Haskell driver for Redis

DISTNAME =		redis-0.11
CATEGORIES =		databases
REVISION =		1

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
