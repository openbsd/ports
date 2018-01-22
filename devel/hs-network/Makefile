# $OpenBSD: Makefile,v 1.31 2018/01/22 21:42:27 kili Exp $

COMMENT =		Haskell networking library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		network-2.6.2.1
REVISION =		3
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EN7QebdZTnQLy4O4vi1CmV

.include <bsd.port.mk>
