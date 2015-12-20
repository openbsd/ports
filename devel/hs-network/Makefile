# $OpenBSD: Makefile,v 1.26 2015/12/20 11:28:07 kili Exp $

COMMENT =		Haskell networking library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		network-2.6.2.1
REVISION =		0
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A6pE0dLgMEk2GtUa1JtTJQ

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

.include <bsd.port.mk>
