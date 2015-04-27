# $OpenBSD: Makefile,v 1.26 2015/04/27 07:27:38 dcoppa Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.4.0.1
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-convertible>=1.1.0.0 \
			devel/hs-mtl \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
