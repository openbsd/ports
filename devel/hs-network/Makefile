# $OpenBSD: Makefile,v 1.22 2013/07/18 21:48:49 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.4.1.2
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

RUN_DEPENDS =		devel/hs-parsec>=3.0
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
