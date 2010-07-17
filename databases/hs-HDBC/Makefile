# $OpenBSD: Makefile,v 1.6 2010/07/17 13:46:35 kili Exp $

COMMENT =		abstraction layer between Haskell and SQL

DISTNAME =		HDBC-2.2.4
REVISION =		4
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

LIB_DEPENDS =		::devel/hs-convertible
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
