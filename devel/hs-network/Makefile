# $OpenBSD: Makefile,v 1.25 2015/09/19 07:58:00 kili Exp $

COMMENT =		Haskell networking library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		network-2.6.2.1
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	F6mK9sCIw3M5SbZMt2lUQE

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

.include <bsd.port.mk>
