# $OpenBSD: Makefile,v 1.17 2014/09/15 11:46:55 naddy Exp $

COMMENT=		mysql driver for HDBC

DISTNAME=		HDBC-mysql-0.6.6.1
REVISION=		4
CATEGORIES=		databases

HOMEPAGE=		https://github.com/bos/hdbc-mysql

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC>=2.1.0 \
			databases/mariadb \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
