# $OpenBSD: Makefile,v 1.16 2012/04/23 17:15:17 espie Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.3.0
CATEGORIES =		databases
REVISION =		0

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC>=2.3.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
