# $OpenBSD: Makefile,v 1.15 2011/12/05 14:56:30 dcoppa Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.3.0
CATEGORIES =		databases

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		databases/hs-HDBC>=2.3.0.0 \
			databases/sqlite3 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
