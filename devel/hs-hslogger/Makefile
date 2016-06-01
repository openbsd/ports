# $OpenBSD: Makefile,v 1.30 2016/06/01 09:19:44 dcoppa Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.2.10
CATEGORIES =		devel sysutils
HOMEPAGE =		https://github.com/jgoerzen/hslogger/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7S2R9oN6Jiq9ujVQkRIVGN

RUN_DEPENDS +=		devel/hs-network \
			devel/hs-mtl \
			devel/hs-old-locale
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
