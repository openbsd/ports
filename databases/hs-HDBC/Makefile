# $OpenBSD: Makefile,v 1.1.1.1 2010/04/14 06:30:49 dcoppa Exp $

COMMENT =		abstraction layer between Haskell and SQL

DISTNAME =		HDBC-2.2.4
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

.include <bsd.port.mk>
