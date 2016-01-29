# $OpenBSD: Makefile,v 1.10 2016/01/29 20:28:08 kili Exp $

COMMENT =		random number library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		random-1.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9Kgekc9yEaLHLNUuw6paWL

.include <bsd.port.mk>
