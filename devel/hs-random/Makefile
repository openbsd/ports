# $OpenBSD: Makefile,v 1.11 2017/11/07 21:19:40 kili Exp $

COMMENT =		random number library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		random-1.1
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	54KmMHXjttlERYcr1mvsAe

.include <bsd.port.mk>
