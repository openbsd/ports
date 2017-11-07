# $OpenBSD: Makefile,v 1.5 2017/11/07 21:18:10 kili Exp $

COMMENT =		old locale library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		old-locale-1.0.0.7
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6glXNhHF891B41ZfuI8hU8

.include <bsd.port.mk>
