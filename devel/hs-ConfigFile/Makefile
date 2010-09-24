# $OpenBSD: Makefile,v 1.7 2010/09/24 10:09:42 dcoppa Exp $

COMMENT =		parser and writer for config files

DISTNAME =		ConfigFile-1.0.6
REVISION =		5
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

RUN_DEPENDS +=		::devel/hs-MissingH
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
