# $OpenBSD: Makefile,v 1.23 2013/03/11 02:52:05 espie Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.3.1.2
REVISION =		0
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-convertible>=1.0.10.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
