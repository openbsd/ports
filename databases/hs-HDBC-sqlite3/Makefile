# $OpenBSD: Makefile,v 1.10 2010/11/15 00:22:51 espie Exp $

COMMENT =		sqlite3 driver for HDBC

DISTNAME =		HDBC-sqlite3-2.3.0.0
REVISION =		7
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

RUN_DEPENDS +=		databases/hs-HDBC \
			databases/sqlite3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
