# $OpenBSD: Makefile,v 1.17 2012/11/06 21:24:16 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.3.0.13
REVISION =		1
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

RUN_DEPENDS =		devel/hs-parsec>=2.0,<3.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
