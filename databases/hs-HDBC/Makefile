# $OpenBSD: Makefile,v 1.13 2011/04/11 14:34:17 kili Exp $

COMMENT =		abstraction layer for SQL relational databases

DISTNAME =		HDBC-2.2.6.1
REVISION =		0
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

RUN_DEPENDS +=		devel/hs-convertible>=1.0.9.1
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
