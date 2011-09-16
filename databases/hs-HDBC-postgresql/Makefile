# $OpenBSD: Makefile,v 1.7 2011/09/16 08:48:02 espie Exp $

COMMENT=		postgresql driver for HDBC

DISTNAME=		HDBC-postgresql-2.2.3.3
CATEGORIES=		databases
REVISION =		0

HOMEPAGE=		http://software.complete.org/hdbc-postgresql

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC \
			databases/postgresql \
			devel/hs-mtl \
			devel/hs-parsec
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
