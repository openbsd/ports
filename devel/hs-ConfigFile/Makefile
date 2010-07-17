# $OpenBSD: Makefile,v 1.6 2010/07/17 13:43:36 kili Exp $

COMMENT =		parser for config files in Haskell

DISTNAME =		ConfigFile-1.0.6
REVISION =		4
CATEGORIES =		devel sysutils
HOMEPAGE =		http://software.complete.org/configfile

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-MissingH
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
