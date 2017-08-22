# $OpenBSD: Makefile,v 1.26 2017/08/22 12:41:58 dcoppa Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.3.1
REVISION =		3
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KfXXdfWIL4WGBGwiUwTwPl

RUN_DEPENDS +=		databases/hs-HDBC>=2.3.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
