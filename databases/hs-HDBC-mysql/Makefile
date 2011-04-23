# $OpenBSD: Makefile,v 1.3 2011/04/23 14:32:50 kili Exp $

COMMENT=		mysql driver for HDBC

DISTNAME=		HDBC-mysql-0.6.3
REVISION=		1
CATEGORIES=		databases

HOMEPAGE=		http://www.maubi.net/~waterson/hacks/hdbc-mysql.html

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC \
			databases/mysql \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
