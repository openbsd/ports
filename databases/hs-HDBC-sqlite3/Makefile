# $OpenBSD: Makefile,v 1.28 2018/01/22 21:38:37 kili Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.3.1
REVISION =		5
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ApRGkcIWLeSJzljQxjGBik

RUN_DEPENDS +=		databases/hs-HDBC>=2.3.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
