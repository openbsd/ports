# $OpenBSD: Makefile,v 1.21 2014/09/05 09:48:13 dcoppa Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.2.4
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
