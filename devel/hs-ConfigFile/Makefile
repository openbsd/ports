# $OpenBSD: Makefile,v 1.1.1.1 2010/04/13 19:31:33 dcoppa Exp $

COMMENT =		parser for config files in Haskell

DISTNAME =		ConfigFile-1.0.6
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

.include <bsd.port.mk>
