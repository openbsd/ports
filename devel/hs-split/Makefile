# $OpenBSD: Makefile,v 1.13 2017/11/07 21:20:31 kili Exp $

COMMENT =		library for splitting lists

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		split-0.2.3.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IJKK4pOCYGKud0jZImZke

.include <bsd.port.mk>
