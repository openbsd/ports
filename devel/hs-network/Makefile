# $OpenBSD: Makefile,v 1.19 2012/12/02 20:27:19 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.3.1.0
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
