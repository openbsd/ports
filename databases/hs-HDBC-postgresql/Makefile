# $OpenBSD: Makefile,v 1.12 2013/01/03 13:46:29 dcoppa Exp $

COMMENT=		postgresql driver for HDBC

DISTNAME=		HDBC-postgresql-2.3.2.1
REVISION=		2
CATEGORIES=		databases

HOMEPAGE=		https://github.com/hdbc/hdbc-postgresql/wiki

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC>=2.2.0 \
			databases/postgresql \
			devel/hs-convertible \
			devel/hs-mtl \
			devel/hs-parsec
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
