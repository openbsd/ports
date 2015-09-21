# $OpenBSD: Makefile,v 1.20 2015/09/21 18:29:02 kili Exp $

COMMENT=		mysql driver for HDBC

DISTNAME=		HDBC-mysql-0.6.6.1
REVISION=		6
CATEGORIES=		databases

HOMEPAGE=		https://github.com/bos/hdbc-mysql

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1IZZvsYLiaLCMDPJvqWPJZ

RUN_DEPENDS +=		databases/hs-HDBC>=2.1.0 \
			databases/mariadb \
			devel/hs-mtl \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
