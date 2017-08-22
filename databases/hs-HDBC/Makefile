# $OpenBSD: Makefile,v 1.30 2017/08/22 12:41:57 dcoppa Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.4.0.2
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5UoWvikOzbMJKUris4Q3M4

RUN_DEPENDS +=		devel/hs-convertible>=1.1.0.0 \
			devel/hs-mtl \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
