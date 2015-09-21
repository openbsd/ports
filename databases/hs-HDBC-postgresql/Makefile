# $OpenBSD: Makefile,v 1.19 2015/09/21 18:29:02 kili Exp $

COMMENT=		postgresql driver for HDBC

DISTNAME=		HDBC-postgresql-2.3.2.3
REVISION=		0
CATEGORIES=		databases

HOMEPAGE=		https://github.com/hdbc/hdbc-postgresql/wiki

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register
MODGHC_PACKAGE_KEY=	3KIjfYZ1JIm9AzgYMQLGWz

RUN_DEPENDS +=		databases/hs-HDBC>=2.2.6 \
			databases/postgresql \
			devel/hs-convertible \
			devel/hs-mtl \
			devel/hs-parsec
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
