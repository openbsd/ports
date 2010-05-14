# $OpenBSD: Makefile,v 1.2 2010/05/14 09:08:26 kili Exp $

COMMENT =		abstraction layer between Haskell and SQL

DISTNAME =		HDBC-2.2.4
PKGNAME =		hs-${DISTNAME}p0
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
