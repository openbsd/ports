# $OpenBSD: Makefile,v 1.20 2013/01/20 18:02:53 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.3.1.0
REVISION =		0
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

RUN_DEPENDS =		devel/hs-parsec>=2.0
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
