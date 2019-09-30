# $OpenBSD: Makefile,v 1.36 2019/09/30 12:47:05 kili Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.4.0.2
REVISION =		4
CATEGORIES =		databases

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	aCUjKLHgaF9NnIcxRYPK7

RUN_DEPENDS +=		devel/hs-convertible>=1.1.0.0 \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
