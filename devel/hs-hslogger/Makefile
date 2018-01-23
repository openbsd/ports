# $OpenBSD: Makefile,v 1.32 2018/01/23 00:09:02 kili Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.2.10
REVISION =		1
CATEGORIES =		devel sysutils
HOMEPAGE =		https://github.com/jgoerzen/hslogger/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CllZPL4aRtPEC4eix5IrCG

RUN_DEPENDS +=		devel/hs-network \
			devel/hs-mtl \
			devel/hs-old-locale
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
