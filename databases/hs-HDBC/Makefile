# $OpenBSD: Makefile,v 1.7 2010/09/24 10:09:42 dcoppa Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.2.4
REVISION =		5
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
