# $OpenBSD: Makefile,v 1.24 2014/11/22 20:48:00 kili Exp $

COMMENT =		Haskell networking library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		network-2.4.2.3
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
