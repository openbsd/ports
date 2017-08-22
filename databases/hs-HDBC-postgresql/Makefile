# $OpenBSD: Makefile,v 1.23 2017/08/22 12:41:58 dcoppa Exp $

COMMENT=		postgresql driver for HDBC

DISTNAME=		HDBC-postgresql-2.3.2.5
CATEGORIES=		databases

HOMEPAGE=		https://github.com/hdbc/hdbc-postgresql/wiki

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register
MODGHC_PACKAGE_KEY=	Lnzuk56AQgSERSgUalPem0

RUN_DEPENDS +=		databases/hs-HDBC>=2.2.6 \
			databases/postgresql \
			devel/hs-convertible \
			devel/hs-mtl \
			devel/hs-parsec
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
