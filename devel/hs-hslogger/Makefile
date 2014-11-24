# $OpenBSD: Makefile,v 1.23 2014/11/24 16:07:59 kili Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.2.6
REVISION =		0
CATEGORIES =		devel sysutils
HOMEPAGE =		https://github.com/jgoerzen/hslogger/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-network<2.5 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
