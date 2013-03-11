# $OpenBSD: Makefile,v 1.18 2013/03/11 10:50:07 espie Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.1.5
REVISION =		1
CATEGORIES =		devel sysutils
HOMEPAGE =		https://github.com/jgoerzen/hslogger/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-network \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
