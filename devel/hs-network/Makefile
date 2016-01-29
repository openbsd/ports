# $OpenBSD: Makefile,v 1.29 2016/01/29 20:28:08 kili Exp $

COMMENT =		Haskell networking library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		network-2.6.2.1
REVISION =		1
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A6pE0dLgMEk2GtUa1JtTJQ

.include <bsd.port.mk>
