# $OpenBSD: Makefile,v 1.32 2019/09/30 12:47:06 kili Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.3.1
REVISION =		8
CATEGORIES =		databases

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	28PjG9NHSLb9snL4BShYwf

RUN_DEPENDS +=		databases/hs-HDBC>=2.3.0.0
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
