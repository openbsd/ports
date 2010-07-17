# $OpenBSD: Makefile,v 1.6 2010/07/17 13:41:57 kili Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.0.0
REVISION =		4
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

LIB_DEPENDS =		::databases/hs-HDBC \
			::databases/sqlite3
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
