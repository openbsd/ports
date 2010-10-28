# $OpenBSD: Makefile,v 1.8 2010/10/28 13:51:19 jasper Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.2.4
REVISION =		6
CATEGORIES =		databases
HOMEPAGE =		http://software.complete.org/hdbc

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::devel/hs-convertible
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
