# $OpenBSD: Makefile,v 1.27 2015/09/21 18:29:02 kili Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.4.0.1
REVISION =		0
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9zcvMzPj7ogL6ELAkSdeM0

RUN_DEPENDS +=		devel/hs-convertible>=1.1.0.0 \
			devel/hs-mtl \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
