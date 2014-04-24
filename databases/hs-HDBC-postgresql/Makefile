# $OpenBSD: Makefile,v 1.15 2014/04/24 14:55:50 jasper Exp $

COMMENT=		postgresql driver for HDBC

DISTNAME=		HDBC-postgresql-2.3.2.1
REVISION=		4
CATEGORIES=		databases

HOMEPAGE=		https://github.com/hdbc/hdbc-postgresql/wiki

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC>=2.2.0 \
			databases/postgresql \
			devel/hs-convertible \
			devel/hs-mtl \
			devel/hs-parsec
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
