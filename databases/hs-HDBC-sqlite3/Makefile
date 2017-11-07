# $OpenBSD: Makefile,v 1.27 2017/11/07 21:56:48 kili Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.3.1
REVISION =		4
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7OEFOkcaNs7C4q0oRNMcyb

RUN_DEPENDS +=		databases/hs-HDBC>=2.3.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
