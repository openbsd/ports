# $OpenBSD: Makefile,v 1.29 2016/01/20 16:22:26 kili Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.2.9
REVISION =		2
CATEGORIES =		devel sysutils
HOMEPAGE =		https://github.com/jgoerzen/hslogger/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BLLA2mHMd1Y30ogCyK2blO

RUN_DEPENDS +=		devel/hs-network \
			devel/hs-mtl \
			devel/hs-old-locale
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
