# $OpenBSD: Makefile,v 1.3 2010/05/19 15:58:18 kili Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.0.0
PKGNAME =		hs-${DISTNAME}p1
CATEGORIES =		databases
HOMEPAGE =		http://software.complete.org/hdbc-sqlite3

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		::databases/sqlite3
BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		::databases/hs-HDBC

.include <bsd.port.mk>
