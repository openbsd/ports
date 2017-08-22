# $OpenBSD: Makefile,v 1.27 2017/08/22 12:41:57 dcoppa Exp $

COMMENT=		mysql driver for HDBC

DISTNAME=		HDBC-mysql-0.7.1.0
REVISION=		0
CATEGORIES=		databases

HOMEPAGE=		https://github.com/bos/hdbc-mysql

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EFm8ppp1gpi6yzDxpVeyso

RUN_DEPENDS +=		databases/hs-HDBC>=2.1.0 \
			databases/mariadb \
			devel/hs-mtl \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
